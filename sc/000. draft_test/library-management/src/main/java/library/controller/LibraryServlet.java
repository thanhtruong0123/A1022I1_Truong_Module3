package library.controller;

import library.bean.Book;
import library.bean.Borrowing;
import library.bean.Student;
import library.repository.*;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "LibraryServlet", value = "/library")
public class LibraryServlet extends HttpServlet {
    BookRepository bookRepository = new BookRepositoryImpl();
    BorrowingRepository borrowingRepository = new BorrowingRepositoryImpl();
    StudentRepository studentRepository = new StudentRepositoryImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "borrow":
                showBorrowForm(request, response);
                break;
            case "listBorrow":
                showListBorrow(request, response);
                break;
            case "return":
                returnBook(request, response);
                break;
            default:
                showListBooks(request, response);
                break;
        }
    }

    private void returnBook(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int bookId = Integer.parseInt(request.getParameter("bookId"));
        int borrowingId = Integer.parseInt(request.getParameter("id"));

        bookRepository.increaseQuantity(bookId);
        borrowingRepository.deleteBorrowing(borrowingId);

        List<Borrowing> borrowingList = borrowingRepository.showListBorrow();
        request.setAttribute("borrowingList", borrowingList);
        request.getRequestDispatcher("WEB-INF/library/listBorrowing.jsp")
                .forward(request, response);
    }

    private void showListBorrow(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Borrowing> borrowingList = borrowingRepository.showListBorrow();

        request.setAttribute("borrowingList", borrowingList);
        request.getRequestDispatcher("WEB-INF/library/listBorrowing.jsp")
                .forward(request, response);
    }

    private void showBorrowForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int bookId = Integer.parseInt(request.getParameter("book_id"));
        Book book = bookRepository.selectBook(bookId);
        RequestDispatcher dispatcher;

        if (book.getQuantity() > 0) {
            List<Student> studentList = studentRepository.showListStudent();

            request.setAttribute("book", book);
            request.setAttribute("studentList", studentList);

            dispatcher = request.getRequestDispatcher("WEB-INF/library/borrowing.jsp");
        } else {
            dispatcher = request.getRequestDispatcher("WEB-INF/library/zeroQuantity.jsp");
        }

        dispatcher.forward(request, response);
    }

    private void showListBooks(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Book> bookList = bookRepository.showListBook();
        request.setAttribute("bookList", bookList);
        request.getRequestDispatcher("WEB-INF/library/listBook.jsp")
                .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "borrow":
                borrowBook(request, response);
                break;
            case "listBorrow":
                filterListBorrow(request, response);
                break;
        }
    }

    private void filterListBorrow(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String bookName = request.getParameter("book_name");
        if (bookName == null) {
            bookName = "";
        }

        String studentName = request.getParameter("student_name");
        if (studentName == null) {
            studentName = "";
        }

        List<Borrowing> borrowingList = borrowingRepository.filterListBorrow(bookName, studentName);

        request.setAttribute("borrowingList", borrowingList);
        request.getRequestDispatcher("WEB-INF/library/listBorrowing.jsp")
                .forward(request, response);
    }

    private void borrowBook(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String bookName = request.getParameter("book_name");
        Book book = bookRepository.selectBook(bookName);


        String studentName = request.getParameter("student_name");
        Student student = studentRepository.selectStudent(studentName);

        boolean status = true;
        String first_date = request.getParameter("first_date");
        String last_date = request.getParameter("last_date");

        Borrowing borrowing = new Borrowing(book, student, status, first_date, last_date);
        if(borrowingRepository.addNew(borrowing)) {
            bookRepository.decreaseQuantity(book.getId());
        }
        request.getRequestDispatcher("WEB-INF/library/borrowing.jsp")
                .forward(request, response);
    }
}
