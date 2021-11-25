package Data;

public enum Config {
    DB_STRING("db_string", "The string to connect to the database", "jdbc:mysql://localhost:%s/zmc353_2"),

    DB_PORT("db_port", "The port through which to connect to the database", "3306"),

    DB_PW("db_pw", "PW for DB", "hUp3rW4H"),

    DB_USERNAME("db_username", "User for local DB.", "zmc353_2"),





    SSH_HOST("ssh_host", "SSH Host URL", "login.encs.concordia.ca"),

    SSH_USER("ssh_user", "Your personal ENCS username", "p_atthew"),

    SSH_PW("ssw_pw", "Your personal ENCS pw", "Matt12345678$"),

    MYSQL_HOST("mysql_host", "MySQL Host URL", "zmc353.encs.concordia.ca"),;




    public String propertyName;
    public String description;
    public String value;

    Config(String property, String description, String defaultValue){
        this.propertyName = property;
        this.description = description;
        this.value = defaultValue;
    }
}
