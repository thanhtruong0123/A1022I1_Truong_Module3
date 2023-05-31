package library.repository;

import library.bean.Book;
import library.bean.Borrowing;
import library.bean.Student;
import library.repository.DAO.DBConection;
import library.repository.DAO.DBUnity;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class BorrowingRepositoryImpl implements BorrowingRepository {
    StudentRepository studentRepository = new StudentRepositoryImpl();
    BookRepository bookRepository = new BookRepositoryImpl();
    @Override
    public boolean addNew(Borrowing borrowing) {
        boolean isBorrow;

        try (Connection connection = DBConection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(DBUnity.ADD_NEW_BORROWING);) {
                System.out.println(preparedStatement);
                    preparedStatement.setInt(1, borrowing.getBook().getId());
                    preparedStatement.setInt(2, borrowing.getStudent().getId());
                    preparedStatement.setBoolean(3, borrowing.isStatus());
                    preparedStatement.setString(4, borrowing.getFirstDate());
                    preparedStatement.setString(5, borrowing.getLastDate());

                    isBorrow = preparedStatement.executeUpdate() > 0;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return isBorrow;
    }

    @Override
    public List<Borrowing> showListBorrow() {
        List<Borrowing> borrowingList = new ArrayList<>();

        try (Connection connection = DBConection.getConnection();
             Statement statement = connection.createStatement();) {
            ResultSet rs = statement.executeQuery(DBUnity.SELECT_LIST_BORROWING);

            while (rs.next()) {
                int id = rs.getInt("borrowing_id");

                int bookId = rs.getInt("book_id");
                Book book = bookRepository.selectBook(bookId);

                int studentId = rs.getInt("student_id");
                Student student = studentRepository.selectStudent(studentId);

                boolean status = rs.getBoolean("borrowing_status");
                String firstDate = rs.getString("borrowing_first_date");
                String lastDate = rs.getString("borrowing_last_date");

                borrowingList.add(new Borrowing(id, book, student, status, firstDate, lastDate));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return borrowingList;
    }

    @Override
    public List<Borrowing> filterListBorrow(String bookName, String studentName) {
        List<Borrowing> filterList = new ArrayList<>();

        List<Borrowing> borrowingList = this.showListBorrow();
        for (Borrowing borrowing : borrowingList) {
            if (borrowing.getBook().getName().equals(bookName) && borrowing.getStudent().getName().equals(studentName)) {
                filterList.add(borrowing);
            } else if (borrowing.getBook().getName().equals(bookName) && studentName.equals("")) {
                filterList.add(borrowing);
            } else if (bookName.equals("") && borrowing.getStudent().getName().equals(studentName)) {
                filterList.add(borrowing);
            } else if (bookName.equals("") && studentName.equals("")) {
                filterList = borrowingList;
            }
        }
        return filterList;
    }

    @Override
    public void deleteBorrowing(int id) {
        try (Connection connection = DBConection.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(DBUnity.DELETE_A_BORROWING);) {
                preparedStatement.setInt(1, id);
                System.out.println(preparedStatement);

                preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
