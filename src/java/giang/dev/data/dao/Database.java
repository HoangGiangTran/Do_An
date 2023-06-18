package giang.dev.data.dao;

import giang.dev.data.impl.CategoryImpl;
import giang.dev.data.impl.GalleryImpl;
import giang.dev.data.impl.OrderImpl;
import giang.dev.data.impl.OrderItemImpl;
import giang.dev.data.impl.ProductImpl;
import giang.dev.data.impl.UserImpl;

public class Database extends DatabaseDao {

    @Override
    public ProductDao getProductDao() {
        // TODO Auto-generated method stub
        return new ProductImpl();
    }

    @Override
    public CategoryDao getCategoryDao() {
        // TODO Auto-generated method stub
        return new CategoryImpl();
    }

    @Override
    public GalleryDao getGalleryDao() {
        // TODO Auto-generated method stub
        return new GalleryImpl();
    }

    @Override
    public OrderItemDao getOrderItemDao() {
        // TODO Auto-generated method stub
        return new OrderItemImpl();
    }

    @Override
    public OrderDao getOrderDao() {
        // TODO Auto-generated method stub
        return new OrderImpl();
    }

    @Override
    public UserDAO getUserDao() {
        // TODO Auto-generated method stub
        return new UserImpl();
    }

}
