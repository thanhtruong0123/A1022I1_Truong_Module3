package demo.repository;

import demo.bean.Role;
import demo.bean.User;
import demo.repository.dao.DBConection;
import demo.repository.dao.DBUnity;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserRepositoryImpl implements UserRepository {

    @Override
    public User selectUser(int id) {
        User user = null;

        try (Connection connection = DBConection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(DBUnity.SELECT_USER_BY_ID);) {
                preparedStatement.setInt(1, id);
                System.out.println(preparedStatement);

                ResultSet rs = preparedStatement.executeQuery();

                while (rs.next()) {
                    String name = rs.getString("user_full_name");
                    String birthday = rs.getString("user_birthday");
                    String createTime = rs.getString("user_create_time");

                    user = new User(id, name, birthday, createTime);
                }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return user;
    }

    @Override
    public void     addUser(User user) {
        PreparedStatement preparedStatement = null;
        Connection connection = null;
        try {
                connection = DBConection.getConnection();
                preparedStatement = connection.prepareStatement(DBUnity.INSERT_USER);
                connection.setAutoCommit(false);
                // insert user
                preparedStatement.setInt(1, user.getId());
                preparedStatement.setString(2, user.getName());
                preparedStatement.setString(3, user.getBirthday());
                preparedStatement.setString(4, user.getCreateTime());
                System.out.println(preparedStatement);
                preparedStatement.executeUpdate();

                // insert role
                for (Role role : user.getRole()) {
                    preparedStatement = connection.prepareStatement(DBUnity.INSERT_ACCOUNT);
                    preparedStatement.setInt(1, user.getId());
                    preparedStatement.setInt(2, role.getId());
                    preparedStatement.executeUpdate();
                }

                connection.commit();

        } catch (SQLException e) {
            try {
                connection.rollback();
            } catch (SQLException ex) {
                throw new RuntimeException(ex);
            }
            throw new RuntimeException(e);
        }
    }
}
