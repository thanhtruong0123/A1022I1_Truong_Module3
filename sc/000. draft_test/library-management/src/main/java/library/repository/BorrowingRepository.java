package library.repository;

import library.bean.Borrowing;

import java.util.List;

public interface BorrowingRepository {
    boolean addNew(Borrowing borrowing);

    List<Borrowing> showListBorrow();

    List<Borrowing> filterListBorrow(String bookName, String studentName);

    void deleteBorrowing(int id);
}
