package product.service;

import product.bean.Product;
import product.repository.ProductRepository;
import product.repository.ProductRepositoryImpl;

import java.util.List;

public class ProductServiceImpl implements ProductService {
    ProductRepository repository = new ProductRepositoryImpl();
    @Override
    public void save(Product product) {
        repository.save(product);
    }

    @Override
    public void update(int id, Product product) {
        repository.update(id, product);
    }

    @Override
    public void remove(int id) {
        repository.remove(id);
    }

    @Override
    public List<Product> findAll() {
        return repository.findAll();
    }

    @Override
    public Product findById(int id) {
        return repository.findById(id);
    }
}
