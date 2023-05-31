package library.repository;

import library.bean.Student;

import java.util.List;

public interface StudentRepository {
    List<Student> showListStudent();

    Student selectStudent(int id);

    Student selectStudent(String name);
}
