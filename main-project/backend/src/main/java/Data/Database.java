package Data;

import Models.Person;

import java.sql.*;

public class Database {
    private static Connection connection;
    private static Database instance;

    private static final String SELECT_PERSON_QUERY = "SELECT * FROM Person WHERE pid = ?";

    public static Database getInstance() throws SQLException, ClassNotFoundException {
        if(connection == null || instance == null) {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(String.format(Config.DB_STRING.value.toString(), Config.DB_PORT.value.toString())
                    , Config.DB_USERNAME.value.toString(), Config.DB_PW.value.toString());
            instance = new Database();
        }
        return instance;
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
