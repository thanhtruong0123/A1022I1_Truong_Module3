package demo.repository;

import demo.bean.Role;
import demo.bean.User;
import demo.repository.dao.DBConection;
import demo.repository.dao.DBUnity;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class RoleRepositoryImpl implements RoleRepository {
    @Override
    public List<Role> showListRole() {
        List<Role> roleList = new ArrayList<>();

        try (Connection connection = DBConection.getConnection();
             Statement statement = connection.createStatement();) {
            System.out.println(statement);

            ResultSet rs = statement.executeQuery(DBUnity.SELECT_ROLES);

            while (rs.next()) {
                int id = rs.getInt("role_id");
                String name = rs.getString("role_name");

                roleList.add(new Role(id, name));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return roleList;
    }

    @Override
    public Role selectRole(int id) {
        Role role = null;

        try (Connection connection = DBConection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(DBUnity.SELECT_ROLE_BY_ID);) {
            preparedStatement.setInt(1, id);
            System.out.println(preparedStatement);

            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                String name = rs.getString("role_name");

                role = new Role(id, name);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return role;
    }

    @Override
    public Role selectRole(String name) {
        Role role = null;

        try (Connection connection = DBConection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(DBUnity.SELECT_ROLE_BY_ID);) {
            preparedStatement.setString(1, name);
            System.out.println(preparedStatement);

            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("role_id");

                role = new Role(id, name);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return role;
    }
}
