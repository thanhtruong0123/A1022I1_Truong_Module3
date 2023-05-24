package com.codegym.dao;

public class DBUnity {
    public static final String INSERT_USERS_SQL = "INSERT INTO users" + " (name, email, country)VALUES" + " (?, ?, ?);";
    public static final String SELECT_USERS_BY_ID = "SELECT id, name, email, country FROM users WHERE id = ?;";
    public static final String SELECT_ALL_USERS = "SELECT * FROM users;";
    public static final String DELETE_USERS_SQL = "DELETE FROM users WHERE id = ?;";
    public static final String UPDATE_USERS_SQL = "update users set name = ?,email= ?, country =? where id = ?;";
    public static final String SELECT_BY_COUNTRY = "SELECT * FROM users WHERE country = ?;";
    public static final String SORT_BY_NAME = "SELECT * FROM users" + " ORDER BY name;";
}
