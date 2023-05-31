package furama.bean;

public class Contract {
    private int id;
    private String startDate;
    private String endDate;
    private double deposit;
    private double totalMoney;
    private Employee employee;
    private Customer customer;
    private Service service;

    public Contract() {}

    public Contract(int id, String startDate, String endDate, double deposit, double totalMoney, Employee employee, Customer customer, Service service) {
        this.id = id;
        this.startDate = startDate;
        this.endDate = endDate;
        this.deposit = deposit;
        this.totalMoney = totalMoney;
        this.employee = employee;
        this.customer = customer;
        this.service = service;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getStartDate() {
        return startDate;
    }

    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    public String getEndDate() {
        return endDate;
    }

    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }

    public double getDeposit() {
        return deposit;
    }

    public void setDeposit(double deposit) {
        this.deposit = deposit;
    }

    public double getTotalMoney() {
        return totalMoney;
    }

    public void setTotalMoney(double totalMoney) {
        this.totalMoney = totalMoney;
    }

    public Employee getEmployee() {
        return employee;
    }

    public void setEmployee(Employee employee) {
        this.employee = employee;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public Service getService() {
        return service;
    }

    public void setService(Service service) {
        this.service = service;
    }
}
