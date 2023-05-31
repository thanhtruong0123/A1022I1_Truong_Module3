package demo.repository;

import demo.bean.Role;

import java.util.List;

public interface RoleRepository {
    List<Role> showListRole();
    Role selectRole(int id);
    Role selectRole(String name);
}
