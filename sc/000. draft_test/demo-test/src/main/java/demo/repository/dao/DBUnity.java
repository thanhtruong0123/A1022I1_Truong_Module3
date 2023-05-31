package demo.repository.dao;

public class DBUnity {
//    public static final String SELECT_ALL_ACCOUNT = "SELECT account.user_id, user.user_full_name, user.user_birthday, user.user_create_time, account.role_id, role.role_name " + "FROM account " + "JOIN user ON account.user_id = user.user_id " + "JOIN role ON account.role_id = role.role_id;";


    //Account
    public static final String SELECT_ALL_ACCOUNT = "SELECT * FROM account;";
    public static final String INSERT_ACCOUNT = "INSERT INTO account VALUES (?, ?);";

    //User
    public static final String SELECT_USER_BY_ID = "SELECT * FROM user WHERE user_id = ?";
    public static final String INSERT_USER = "INSERT INTO user(user_id, user_full_name, user_birthday, user_create_time) VALUES (?, ?, ?, ?);";


    //Role
    public static final String SELECT_ROLE_BY_ID = "SELECT * FROM role WHERE role_id = ?";
    public static final String SELECT_ROLES = "SELECT * FROM role;";
    public static final String SELECT_ROLE_BY_NAME = "SELECT * FROM role WHERE role_name = ?";

}
