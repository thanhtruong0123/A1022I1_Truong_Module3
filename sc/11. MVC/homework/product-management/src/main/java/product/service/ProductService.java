package product.service;

import product.bean.Product;

import java.util.List;

public interface ProductService {
    void save(Product product);
    void update(int id, Product product);
    void remove(int id);
    List<Product> findAll();
    Product findById(int id);
}
