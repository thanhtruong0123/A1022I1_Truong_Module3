package customer.service;

import customer.bean.Customer;
import customer.repository.CustomerRepository;
import customer.repository.CustomerRepositoryImpl;

import java.util.List;

public class CustomerServiceImpl implements CustomerService {
    CustomerRepository repository = new CustomerRepositoryImpl();
    @Override
    public List<Customer> findAll() {
        return repository.findAll();
    }

    @Override
    public void save(Customer customer) {
        repository.save(customer);
    }

    @Override
    public Customer findById(int id) {
        return repository.findById(id);
    }

    @Override
    public Boolean update(int id, Customer customer) {
        return repository.update(id, customer);
    }

    @Override
    public Boolean remove(int id) {
        return repository.remove(id);
    }
}
