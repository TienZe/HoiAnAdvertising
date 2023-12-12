package model.bo;

import java.sql.SQLException;
import java.util.ArrayList;

import model.bean.Restaurant;
import model.dao.RestaurantDAO;

public class RestaurantBO implements PaginatedBO<Restaurant> {
    private RestaurantDAO restaurantDAO = new RestaurantDAO();

    @Override
    public ArrayList<Restaurant> getPage(int pageIndex, int pageSize) throws ClassNotFoundException, SQLException {
        return restaurantDAO.getInRange((pageIndex - 1) * pageSize, pageSize);
    }

    @Override
    public int count() throws ClassNotFoundException, SQLException {
        return restaurantDAO.count();
    }

    @Override
    public ArrayList<Restaurant> getPage(int pageIndex, int pageSize, String searchKey) throws ClassNotFoundException, SQLException {
        return restaurantDAO.getInRange((pageIndex - 1) * pageSize, pageSize, searchKey);
    }

    @Override
    public int count(String filter) throws ClassNotFoundException, SQLException {
        return restaurantDAO.count(filter);
    }

    public Restaurant getById(int id) throws ClassNotFoundException, SQLException {
        return restaurantDAO.getByID(id);
    }

    public boolean add(Restaurant restaurant) throws ClassNotFoundException, SQLException {
        return restaurantDAO.add(restaurant);
    }

    public boolean update(Restaurant restaurant) throws ClassNotFoundException, SQLException {
        return restaurantDAO.update(restaurant);
    }

    public boolean delete(int id) throws ClassNotFoundException, SQLException {
        return restaurantDAO.delete(id);
    }
}
