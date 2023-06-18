package giang.dev.data.dao;

import java.util.List;

import giang.dev.data.model.Product;

public interface ProductDao {

    public int insert(Product product);

    public boolean update(Product product);

    public boolean delete(int id);

    public Product find(int productId);

    public List<Product> findAll();

    public List<Product> hot();
    
    public List<Product> latest();

    public List<Product> findByCategory(int id);
    
    public List<Product> findByName(String key);

}
