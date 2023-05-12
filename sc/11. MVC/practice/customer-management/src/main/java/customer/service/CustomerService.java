package customer.service;

import customer.bean.Customer;
import customer.repository.CustomerRepository;
import customer.repository.CustomerRepositoryImpl;

import java.util.List;

public interface CustomerService {
    List<Customer> findAll();

    void save(Customer customer);

    Customer findById(int id);

    Boolean update(int id, Customer customer);

    Boolean remove(int id);
}
