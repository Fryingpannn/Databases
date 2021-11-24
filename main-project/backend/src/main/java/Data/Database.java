package Data;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Database {
    private static Connection connection;
    private static Database instance;

    public static Database getInstance() throws SQLException, ClassNotFoundException {
        if(connection == null || instance == null) {
            //Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(String.format(Config.DB_STRING.value.toString(), Config.DB_PORT.value.toString())
                    , Config.DB_USERNAME.value.toString(), Config.DB_PW.value.toString());
            instance = new Database();
        }
        return instance;
    }

    public boolean isValid() throws SQLException {
        return connection.isValid(5);
    }
}
