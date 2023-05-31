package library.repository;

import library.bean.Student;
import library.repository.DAO.DBConection;
import library.repository.DAO.DBUnity;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class StudentRepositoryImpl implements StudentRepository {
    @Override
    public List<Student> showListStudent() {
        List<Student> studentList = new ArrayList<>();

        try (Connection connection = DBConection.getConnection();
             Statement statement = connection.createStatement();) {
                System.out.println(statement);
                ResultSet rs =  statement.executeQuery(DBUnity.SELECT_LIST_STUDENT);

                while (rs.next()) {
                    int id = rs.getInt("student_id");
                    String name = rs.getString("student_name");
                    String classroom = rs.getString("student_class");

                    studentList.add(new Student(id, name, classroom));
                }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return studentList;
    }

    @Override
    public Student selectStudent(int id) {
        Student student = null;

        try (Connection connection = DBConection.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(DBUnity.SELECT_STUDENT_BY_ID)) {
                preparedStatement.setInt(1, id);
                System.out.println(preparedStatement);
                ResultSet rs = preparedStatement.executeQuery();

                while (rs.next()) {
                    String name = rs.getString("student_name");
                    String classroom = rs.getString("student_class");

                    student = new Student(id,name, classroom);
                }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return student;
    }

    @Override
    public Student selectStudent(String name) {
        Student student = null;

        try (Connection connection = DBConection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(DBUnity.SELECT_STUDENT_BY_NAME)) {
                preparedStatement.setString(1, name);
                System.out.println(preparedStatement);
                ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("student_id");
                String classroom = rs.getString("student_class");

                student = new Student(id,name, classroom);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return student;
    }
}
