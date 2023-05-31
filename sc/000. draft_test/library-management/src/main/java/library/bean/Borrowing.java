package library.bean;

public class Borrowing {
    private int id;
    private Book book;
    private Student student;
    private boolean status;
    private String firstDate;
    private String lastDate;

    public Borrowing() {
        super();
    }

    public Borrowing(Book book, Student student, boolean status, String firstDate, String lastDate) {
        super();
        this.book = book;
        this.student = student;
        this.status = status;
        this.firstDate = firstDate;
        this.lastDate = lastDate;
    }

    public Borrowing(int id, Book book, Student student, boolean status, String firstDate, String lastDate) {
        super();
        this.id = id;
        this.book = book;
        this.student = student;
        this.status = status;
        this.firstDate = firstDate;
        this.lastDate = lastDate;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Book getBook() {
        return book;
    }

    public void setBook(Book book) {
        this.book = book;
    }

    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public String getFirstDate() {
        return firstDate;
    }

    public void setFirstDate(String firstDate) {
        this.firstDate = firstDate;
    }

    public String getLastDate() {
        return lastDate;
    }

    public void setLastDate(String lastDate) {
        this.lastDate = lastDate;
    }
}
