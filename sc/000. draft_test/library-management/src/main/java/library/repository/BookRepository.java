package library.repository;

import library.bean.Book;

import java.util.List;

public interface BookRepository {
    List<Book> showListBook();

    Book selectBook(int id);

    Book selectBook(String name);

    void decreaseQuantity(int id);

    void increaseQuantity(int id);
}
