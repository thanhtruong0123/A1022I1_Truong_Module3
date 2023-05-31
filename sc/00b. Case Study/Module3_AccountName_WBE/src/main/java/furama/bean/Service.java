package furama.bean;

public class Service {
    private int id;
    private String name;
    private int area;
    private double cost;
    private int maxPeople;
    private RentType rentType;
    private ServiceType serviceType;
    private String standardRoom;
    private String otherConenience;
    private double poolArea;
    private int floorNumber;

    public Service() {
    }

    public Service(int id, String name, int area, double cost, int maxPeople, RentType rentType, ServiceType serviceType, String standardRoom, String otherConenience, double poolArea, int floorNumber) {
        this.id = id;
        this.name = name;
        this.area = area;
        this.cost = cost;
        this.maxPeople = maxPeople;
        this.rentType = rentType;
        this.serviceType = serviceType;
        this.standardRoom = standardRoom;
        this.otherConenience = otherConenience;
        this.poolArea = poolArea;
        this.floorNumber = floorNumber;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getArea() {
        return area;
    }

    public void setArea(int area) {
        this.area = area;
    }

    public double getCost() {
        return cost;
    }

    public void setCost(double cost) {
        this.cost = cost;
    }

    public int getMaxPeople() {
        return maxPeople;
    }

    public void setMaxPeople(int maxPeople) {
        this.maxPeople = maxPeople;
    }

    public RentType getRentType() {
        return rentType;
    }

    public void setRentType(RentType rentType) {
        this.rentType = rentType;
    }

    public ServiceType getServiceType() {
        return serviceType;
    }

    public void setServiceType(ServiceType serviceType) {
        this.serviceType = serviceType;
    }

    public String getStandardRoom() {
        return standardRoom;
    }

    public void setStandardRoom(String standardRoom) {
        this.standardRoom = standardRoom;
    }

    public String getOtherConenience() {
        return otherConenience;
    }

    public void setOtherConenience(String otherConenience) {
        this.otherConenience = otherConenience;
    }

    public double getPoolArea() {
        return poolArea;
    }

    public void setPoolArea(double poolArea) {
        this.poolArea = poolArea;
    }

    public int getFloorNumber() {
        return floorNumber;
    }

    public void setFloorNumber(int floorNumber) {
        this.floorNumber = floorNumber;
    }
}
