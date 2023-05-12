package customer.repository;

import customer.bean.Customer;

import java.util.List;

public interface CustomerRepository {
    List<Customer> findAll();

    void save(Customer customer);

    Customer findById(int id);

    Boolean update(int id, Customer customer);

    Boolean remove(int id);
}
