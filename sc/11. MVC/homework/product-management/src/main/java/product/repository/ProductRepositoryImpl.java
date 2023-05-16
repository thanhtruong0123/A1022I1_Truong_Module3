package product.repository;

import product.bean.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductRepositoryImpl implements ProductRepository {
    private static Map<Integer, Product> productMap;

    static {
        productMap = new HashMap<>();
        productMap.put(1, new Product(1, "Iphone 14", 30000000, 50));
        productMap.put(2, new Product(2, "Iphone 13", 25000000, 40));
        productMap.put(3, new Product(3, "Iphone 12", 20000000, 30));
        productMap.put(4, new Product(4, "Iphone 11", 15000000, 20));
        productMap.put(5, new Product(5, "Iphone X", 10000000, 10));
    }
    @Override
    public void save(Product product) {
        productMap.put(product.getId(), product);
    }

    @Override
    public void update(int id, Product product) {
        productMap.put(id, product);
    }

    @Override
    public void remove(int id) {
        productMap.remove(id);
    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(productMap.values());
    }

    @Override
    public Product findById(int id) {
        return productMap.get(id);
    }
}
