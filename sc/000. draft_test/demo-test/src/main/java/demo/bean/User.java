package demo.bean;

import java.util.List;

public class User {
    private int id;
    private String name;
    private String birthday;
    private String createTime;

    private List<Role> role;

    public User() {

    };

    public User(String name, String birthday, String createTime) {
        this.name = name;
        this.birthday = birthday;
        this.createTime = createTime;
    }

    public User(int id, String name, String birthday, String createTime) {
        this.id = id;
        this.name = name;
        this.birthday = birthday;
        this.createTime = createTime;
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

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    public List<Role> getRole() {
        return role;
    }

    public void setRole(List<Role> role) {
        this.role = role;
    }
}
