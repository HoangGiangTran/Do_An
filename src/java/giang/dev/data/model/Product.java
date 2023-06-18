package giang.dev.data.model;

import java.sql.Timestamp;
import java.util.List;

import giang.dev.data.dao.DatabaseDao;

public class Product {

    private int id;
    private String name;
    private String description;
    private double price;
    private int quantity;
    private int view;
    private int categoryId;
    private Timestamp createdAt;

    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public void setView(int view) {
        this.view = view;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public void setCreatedAt(Timestamp createdAt) {
        this.createdAt = createdAt;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getDescription() {
        return description;
    }

    public double getPrice() {
        return price;
    }

    public int getQuantity() {
        return quantity;
    }

    public int getView() {
        return view;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public Timestamp getCreatedAt() {
        return createdAt;
    }

    public Product(String name, String description, double price, int quantity, int categoryId) {
        this.name = name;
        this.description = description;
        this.price = price;
        this.quantity = quantity;
        this.categoryId = categoryId;
    }

    public Product(int id, String name, String description, double price, int quantity, int view, int categoryId, Timestamp createdAt) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.price = price;
        this.quantity = quantity;
        this.view = view;
        this.categoryId = categoryId;
        this.createdAt = createdAt;
    }

    public Product(String name, String description, double price, int quantity, int view, int categoryId, Timestamp createdAt) {
        this.name = name;
        this.description = description;
        this.price = price;
        this.quantity = quantity;
        this.view = view;
        this.categoryId = categoryId;
        this.createdAt = createdAt;
    }

 


    public Category getCategory() {
        return DatabaseDao.getInstance().getCategoryDao().find(categoryId);
    }

    public List<Gallery> getGalleries() {
        return DatabaseDao.getInstance().getGalleryDao().findByProduct(id);
    }

    public List<OrderItem> getOrderItem() {
        return DatabaseDao.getInstance().getOrderItemDao().findByProduct(id);
    }

    public String getThumbnail(){
        List<Gallery> list = getGalleries();
        if(list == null || list.isEmpty()) return "";
        
        return list.get(0).getUrl();
    }
}
