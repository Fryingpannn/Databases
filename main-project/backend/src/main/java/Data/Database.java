package Data;

import Models.*;
import com.jcraft.jsch.JSch;
import com.jcraft.jsch.JSchException;
import com.jcraft.jsch.Session;
import org.jboss.weld.security.AbstractReflectionAction;

import java.sql.*;
import java.util.ArrayList;

public class Database {
    private static Session session;
    private static Connection connection;
    private static Database instance;
    private static String assigned_port;

    private static final String SELECT_PERSON_QUERY = "SELECT * FROM Person WHERE pid = ?";
    private static final String SELECT_ALL_PEOPLE = "SELECT * FROM Person";
    private static final String SELECT_PUBLIC_HEALTH_WORKER_QUERY = "SELECT * FROM PublicHealthWorker WHERE pid = ?";
    private static final String SELECT_VACCINATION_FACILITY_QUERY = "SELECT * FROM VaccinationFacility WHERE facilityID = ?";
    private static final String SELECT_VACCINE_TYPE_QUERY = "SELECT * FROM Vaccine WHERE vaccineType = ?";
    private static final String SELECT_AGE_GROUP_QUERY = "SELECT * FROM AgeGroup WHERE groupNumber = ?";
    private static final String SELECT_BOOKING_SLOT_QUERY = "SELECT * FROM BookingSlots WHERE pid = ? AND doseNumber = ?";


    /**
     * Used to interact with the DB.
     * @return Database object to use methods on
     * @throws SQLException
     * @throws ClassNotFoundException
     */
    public static Database getInstance() throws SQLException, ClassNotFoundException {
        if(connection == null || instance == null || session == null) {
            connectSession();
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(String.format(Config.DB_STRING.value, assigned_port)
                    , Config.DB_USERNAME.value, Config.DB_PW.value);
            System.out.println ("Database connection established");
            instance = new Database();
            System.out.println("DONE");
        }
        return instance;
    }

    /**
     * Start session with remote server (SSH Tunnel)
     */
    private static void connectSession() {
        try {
            JSch jsch = new JSch();
            session = jsch.getSession(Config.SSH_USER.value, Config.SSH_HOST.value, 22);

            session.setConfig("PreferredAuthentications", "password");
            session.setPassword(Config.SSH_PW.value);
            session.setConfig("StrictHostKeyChecking", "no");
            System.out.println("ESTABLISHING CONNECTION");
            session.connect();
            System.out.println("Connected");
            assigned_port = Integer.toString(session.setPortForwardingL(0, Config.MYSQL_HOST.value, Integer.parseInt(Config.DB_PORT.value)));
            System.out.println("localhost:"+assigned_port+" -> "+Config.MYSQL_HOST.value+":"+Config.DB_PORT.value);
            System.out.println("Port Forwarded");
        } catch (JSchException e) {
            e.printStackTrace();
        }
    }

    // returns true if db connection is valid, else false.
    public boolean isValid() throws SQLException {
        return connection.isValid(5);
    }

    /**
     Retrieves one person from database
     @param pid: person id
     @returns Person object
     */
    public synchronized Person getPerson(String pid) throws SQLException {
        PreparedStatement statement = connection.prepareStatement((SELECT_PERSON_QUERY));
        statement.setString(1, pid);

        Person person = null;
        try (ResultSet rs = statement.executeQuery()) {
            while(rs.next()) {
                person = setupPerson(rs, person);
            }
        }
        catch (SQLException e) {
            e.printStackTrace();
            System.out.print("ERROR RETRIEVING ONE PERSON");
            throw e;
        }
        statement.close();
        return person;
    }

    public synchronized PublicHealthWorker getPublicHealthWorker(String pid) throws SQLException {
        PreparedStatement statementWorker = connection.prepareStatement(SELECT_PUBLIC_HEALTH_WORKER_QUERY);
        statementWorker.setString(1, pid);
        PreparedStatement statementPerson = connection.prepareStatement(SELECT_PERSON_QUERY);
        statementPerson.setString(1, pid);

        PublicHealthWorker publicHealthWorker = null;
        ResultSet rsWorker = statementWorker.executeQuery();
        ResultSet rsPerson = statementPerson.executeQuery();
        try{
            while(rsWorker.next() && rsPerson.next())
                publicHealthWorker = setupPublicHealthWorker(rsWorker, rsPerson, publicHealthWorker);
        } catch (SQLException e){
            System.err.println("ERROR RETRIEVING ONE PUBLIC HEALTH WORKER");
            throw e;
        }
        statementPerson.close();
        statementWorker.close();
        return publicHealthWorker;
    }

    public synchronized VaccinationFacility getVaccinationFacility(String facilityID) throws SQLException {
        PreparedStatement statement = connection.prepareStatement(SELECT_VACCINATION_FACILITY_QUERY);
        statement.setString(1, facilityID);

        VaccinationFacility vaccinationFacility = null;
        ResultSet rs = statement.executeQuery();
        try{
            while(rs.next())
                vaccinationFacility = setupVaccinationFacility(rs, vaccinationFacility);
        } catch (SQLException e){
            System.err.println("ERROR RETRIEVING ONE PUBLIC HEALTH WORKER");
            throw e;
        }
        statement.close();
        return vaccinationFacility;
    }

    public synchronized VaccineType getVaccineType(String vaccineType) throws SQLException {
        PreparedStatement statement = connection.prepareStatement(SELECT_VACCINE_TYPE_QUERY);
        statement.setString(1, vaccineType);

        VaccineType vaccine = null;
        ResultSet rs = statement.executeQuery();
        try{
            while(rs.next())
                vaccine = setupVaccineType(rs, vaccine);
        } catch (SQLException e){
            System.err.println("ERROR RETRIEVING ONE PUBLIC HEALTH WORKER");
            throw e;
        }
        statement.close();
        return vaccine;
    }

    public synchronized AgeGroup getAgeGroup(String groupNumber) throws SQLException {
        PreparedStatement statement = connection.prepareStatement(SELECT_AGE_GROUP_QUERY);
        statement.setString(1, groupNumber);

        AgeGroup ageGroup = null;
        ResultSet rs = statement.executeQuery();
        try{
            while(rs.next())
                ageGroup = setupAgeGroup(rs, ageGroup);
        } catch (SQLException e){
            System.err.println("ERROR RETRIEVING ONE PUBLIC HEALTH WORKER");
            throw e;
        }
        statement.close();
        return ageGroup;
    }

    public synchronized BookingSlot getBookingSlot(String pid, String doseNumber) throws SQLException {
        PreparedStatement statement = connection.prepareStatement(SELECT_BOOKING_SLOT_QUERY);
        statement.setString(1, pid);
        statement.setString(2, doseNumber);

        BookingSlot bookingSlot = null;
        ResultSet rs = statement.executeQuery();
        try{
            while(rs.next())
                bookingSlot = setupBookingSlot(rs, bookingSlot);
        } catch (SQLException e){
            System.err.println("ERROR RETRIEVING ONE PUBLIC HEALTH WORKER");
            throw e;
        }
        statement.close();
        return bookingSlot;
    }

    /**
     Retrieves all people
     @returns Person object
     */
    public synchronized ArrayList<Person> getAllPeople() throws SQLException {
        PreparedStatement statement = connection.prepareStatement(SELECT_ALL_PEOPLE);

        ArrayList<Person> people = new ArrayList<Person>();
        try (ResultSet rs = statement.executeQuery()) {
            while(rs.next()) {
                Person person = setupPerson(rs, new Person());
                people.add(person);
            }
        }
        catch (SQLException e) {
            e.printStackTrace();
            System.out.print("ERROR RETRIEVING PERSON");
            throw e;
        }
        statement.close();
        return people;
    }

    /**
     * Sets up a singular person object.
     * @param rs
     * @param person
     * @return the person object with all its attributes.
     * @throws SQLException
     */
    private Person setupPerson(ResultSet rs, Person person) throws SQLException {
        person = new Person();
        person.setPid(rs.getString("pid"));
        person.setFirstName(rs.getString(2));
        person.setMiddleInitial(rs.getString(3));
        person.setLastName(rs.getString(4));
        person.setDateOfBirth(rs.getString(5));
        person.setPhoneNumber(rs.getString(6));
        person.setAddress(rs.getString(7));
        person.setPostalCode(rs.getString(8));
        person.setCity(rs.getString(9));
        person.setProvince(rs.getString(10));
        person.setCitizenship(rs.getString(11));
        person.setEmail(rs.getString(12));
        return person;
    }

    private PublicHealthWorker setupPublicHealthWorker(ResultSet rsWorker, ResultSet rsPerson, PublicHealthWorker publicHealthWorker) throws SQLException {
        // Did not understand why nurseID and vaccineType are attributes of publicHealthWorker
        publicHealthWorker = new PublicHealthWorker(setupPerson(rsPerson, publicHealthWorker));
        publicHealthWorker.setOccupation(rsWorker.getString("occupation"));
        return publicHealthWorker;
    }

    private VaccinationFacility setupVaccinationFacility(ResultSet rs, VaccinationFacility vaccinationFacility) throws SQLException {
        // Did not understand the difference between phoneNumber and phoneNUmber ???? :)))) ?? :)
        vaccinationFacility = new VaccinationFacility();
        vaccinationFacility.setFacilityID(rs.getString("facilityID"));
        vaccinationFacility.setName(rs.getString(2));
        vaccinationFacility.setTypeOf(rs.getString(3));
        vaccinationFacility.setCategory(rs.getString(4));
        vaccinationFacility.setCapacity(rs.getString(5));
        vaccinationFacility.setPostalCode(rs.getString(6));
        vaccinationFacility.setCity(rs.getString(7));
        vaccinationFacility.setProvince(rs.getString(8));
        vaccinationFacility.setPhoneNumber(rs.getString(9));
        vaccinationFacility.setAddress(rs.getString(10));
        vaccinationFacility.setWebAddress(rs.getString(11));
        return vaccinationFacility;
    }

    private VaccineType setupVaccineType(ResultSet rs, VaccineType vaccine) throws SQLException {
        vaccine = new VaccineType();
        vaccine.setVaccineType(rs.getString("vaccineType"));
        vaccine.setStatus(rs.getString(2));
        vaccine.setDateOfApproval(rs.getString(3));
        vaccine.setDateOfSuspension(rs.getString(4));
        return vaccine;
    }

    private AgeGroup setupAgeGroup(ResultSet rs, AgeGroup ageGroup) throws SQLException {
        ageGroup = new AgeGroup();
        ageGroup.setGroupNumber(rs.getString("groupNumber"));
        ageGroup.setMinAge(rs.getString(2));
        ageGroup.setMaxAge(rs.getString(3));
        return ageGroup;
    }

    private BookingSlot setupBookingSlot(ResultSet rs, BookingSlot bookingSlot) throws SQLException {
        bookingSlot = new BookingSlot();
        bookingSlot.setPid(rs.getString("pid"));
        bookingSlot.setFacilityID(rs.getString(2));
        bookingSlot.setTypeOfAppointment(rs.getString(3));
        bookingSlot.setDayOfAppointment(rs.getString(4));
        bookingSlot.setTimeOfAppointment(rs.getString(5));
        bookingSlot.setDoseNumber(rs.getString(6));
        return bookingSlot;
    }
}
