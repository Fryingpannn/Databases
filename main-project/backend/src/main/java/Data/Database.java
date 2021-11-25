package Data;

import Models.Person;
import com.jcraft.jsch.JSch;
import com.jcraft.jsch.JSchException;
import com.jcraft.jsch.Session;

import java.sql.*;

public class Database {
    private static Session session;
    private static Connection connection;
    private static Database instance;
    private static String assigned_port;

    private static final String SELECT_PERSON_QUERY = "SELECT * FROM Person WHERE pid = ?";

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
}
