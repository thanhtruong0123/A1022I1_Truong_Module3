package com.codegym.dao;

import com.codegym.model.User;

import java.sql.SQLException;
import java.util.List;

public interface UserDAO {
    void insertUser(User user);

    User selectById(int id);

    List<User> selectAllUser();

    List<User> selectByCountry(String country);

    List<User> sortByName();

    boolean deleteUser(int id) throws SQLException;

    boolean updateUser(User user) throws SQLException;
}
