package library.repository;

import library.bean.Book;
import library.bean.Student;
import library.repository.DAO.DBConection;
import library.repository.DAO.DBUnity;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class BookRepositoryImpl implements BookRepository {
    @Override
    public List<Book> showListBook() {
        List<Book> bookList = new ArrayList<>();

        try (Connection connection = DBConection.getConnection();
             Statement statement = connection.createStatement();) {
                System.out.println(statement);
                ResultSet rs = statement.executeQuery(DBUnity.SELECT_LIST_BOOK);

                while (rs.next()) {
                    int id = rs.getInt("book_id");
                    String name = rs.getString("book_name");
                    String author = rs.getString("book_author");
                    String description = rs.getString("book_description");
                    int quantity = rs.getInt("book_quantity");
                    bookList.add(new Book(id, name, author, description, quantity));
                }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return bookList;
    }

    @Override
    public Book selectBook(int id) {
        Book book = null;

        try (Connection connection = DBConection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(DBUnity.SELECT_BOOK_BY_ID);) {
                preparedStatement.setInt(1, id);
                System.out.println(preparedStatement);
                ResultSet rs = preparedStatement.executeQuery();

                while (rs.next()) {
                    String name = rs.getString("book_name");
                    String author = rs.getString("book_author");
                    String description = rs.getString("book_description");
                    int quantity = rs.getInt("book_quantity");

                    book = new Book(id, name, author, description, quantity);
                }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return book;
    }

    @Override
    public Book selectBook(String name) {
        Book book = null;

        try (Connection connection = DBConection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(DBUnity.SELECT_BOOK_BY_NAME);) {
            preparedStatement.setString(1, name);
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("book_id");
                String author = rs.getString("book_author");
                String description = rs.getString("book_description");
                int quantity = rs.getInt("book_quantity");

                book = new Book(id, name, author, description, quantity);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return book;
    }

    @Override
    public void decreaseQuantity(int id) {
        try (Connection connection = DBConection.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(DBUnity.BOOK_DECREASE_QUANTITY)) {
                System.out.println(preparedStatement);
                preparedStatement.setInt(1, id);
                preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void increaseQuantity(int id) {
        try (Connection connection = DBConection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(DBUnity.BOOK_INCREASE_QUANTITY)) {
            System.out.println(preparedStatement);
            preparedStatement.setInt(1, id);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
