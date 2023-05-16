package product.repository;

import product.bean.Product;

import java.util.List;

public interface ProductRepository {
    void save(Product product);
    void update(int id, Product product);
    void remove(int id);
    List<Product> findAll();
    Product findById(int id);
}
