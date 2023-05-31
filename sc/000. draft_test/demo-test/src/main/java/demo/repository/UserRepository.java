package demo.repository;

import demo.bean.User;

public interface UserRepository {
    User selectUser(int id);
    void addUser(User user);
}
