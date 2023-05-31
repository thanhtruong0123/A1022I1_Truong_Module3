package library.repository.DAO;

public class DBUnity {
    // Books
    public static final String SELECT_LIST_BOOK = "SELECT * FROM books;";
    public static final String SELECT_BOOK_BY_ID = "SELECT * FROM books " +"WHERE book_id = ?;";
    public static final String SELECT_BOOK_BY_NAME = "SELECT * FROM books " +"WHERE book_name = ?;";
    public static final String BOOK_DECREASE_QUANTITY = "UPDATE books " + "SET book_quantity = book_quantity - 1 " + "WHERE book_id = ?;";
    public static final String BOOK_INCREASE_QUANTITY = "UPDATE books " + "SET book_quantity = book_quantity + 1 " + "WHERE book_id = ?;";


    //Borrowings
    public static final String ADD_NEW_BORROWING = "INSERT INTO borrowings (book_id, student_id, borrowing_status, borrowing_first_date, borrowing_last_date) " + "VALUES (?, ?, ?, ?, ?);";
    public static final String SELECT_LIST_BORROWING = "SELECT * FROM borrowings;";
    public static final String DELETE_A_BORROWING = "DELETE FROM borrowings WHERE borrowing_id = ?;";


    //Students
    public static final String SELECT_LIST_STUDENT = "SELECT * FROM students;";
    public static final String SELECT_STUDENT_BY_ID = "SELECT * FROM students " + "WHERE student_id = ?;";
    public static final String SELECT_STUDENT_BY_NAME = "SELECT * FROM students " + "WHERE student_name = ?;";
}
