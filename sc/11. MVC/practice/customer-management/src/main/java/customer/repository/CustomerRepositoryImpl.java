package customer.repository;

import customer.bean.Customer;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CustomerRepositoryImpl implements CustomerRepository {
    private static Map<Integer, Customer> customerMap;

    static {
        customerMap = new HashMap<>();
        customerMap.put(1, new Customer(1, "John", "John@gmail.com", "Hanoi"));
        customerMap.put(2, new Customer(2, "Bill", "Bill@gmail.com", "Danang"));
        customerMap.put(3, new Customer(3, "Alex", "Alex@gmail.com", "Saigon"));
        customerMap.put(4, new Customer(4, "Adam", "Adam@gmail.com", "Beijin"));
        customerMap.put(5, new Customer(5, "Sophia", "Sophia@gmail.com", "Miami"));
        customerMap.put(6, new Customer(6, "Miami", "Miami@gmail.com", "New York"));
    }

    @Override
    public List<Customer> findAll() {
        return new ArrayList<>(customerMap.values());
    }

    @Override
    public void save(Customer customer) {
        customerMap.put(customer.getId(), customer);
    }

    @Override
    public Customer findById(int id) {
        return customerMap.get(id);
    }

    @Override
    public Boolean update(int id, Customer customer) {
        if (customerMap.containsKey(customerMap.get(id))) {
            customerMap.put(customer.getId(), customer);
            return true;
        } else {
            return false;
        }
    }

    @Override
    public Boolean remove(int id) {
        if (customerMap.containsKey(customerMap.get(id))) {
            customerMap.remove(id);
            return true;
        }
        return false;
    }
}
