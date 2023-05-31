package demo.repository;

import demo.bean.Account;
import demo.bean.Role;
import demo.bean.User;
import demo.repository.dao.DBConection;
import demo.repository.dao.DBUnity;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class AccountRepositoryImpl implements AccountRepository {
    UserRepository userRepository = new UserRepositoryImpl();
    RoleRepository roleRepository = new RoleRepositoryImpl();
    @Override
    public void addAccount(Account account) {
        try (Connection connection = DBConection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(DBUnity.INSERT_ACCOUNT);) {
                preparedStatement.setInt(1, account.getUser().getId());
                preparedStatement.setInt(2, account.getRole().getId());

                preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void deleteAccount(int id) {

    }

    @Override
    public void editAccount(int id) {

    }

    @Override
    public User showAccount(int id) {
        return null;
    }

    @Override
    public List<Account> showListAccount() {
        List<Account> accountList = new ArrayList<>();

        try (Connection connection = DBConection.getConnection();
             Statement statement = connection.createStatement();) {
                System.out.println(statement);
                ResultSet rs = statement.executeQuery(DBUnity.SELECT_ALL_ACCOUNT);

                while (rs.next()) {
                    int userID = rs.getInt("user_id");
                    User user = userRepository.selectUser(userID);

                    int roleID = rs.getInt("role_id");
                    Role role = roleRepository.selectRole(roleID);

                    accountList.add(new Account(user, role));
                }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return accountList;
    }
}
