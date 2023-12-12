package model.dao;

import java.sql.*;
import java.util.ArrayList;

import model.bean.Restaurant;

public class RestaurantDAO {
    public ArrayList<Restaurant> getInRange(int offset, int size) throws SQLException, ClassNotFoundException {
        try (Connection connect = DbHelper.getConnection()) {
            PreparedStatement statement = connect.prepareStatement("SELECT * FROM restaurants LIMIT ?, ?;");
            statement.setInt(1, offset);
            statement.setInt(2, size);

            ResultSet resultSet = statement.executeQuery();

            return convertResultSetToArray(resultSet);
        }
    }

    // Select restaurants, filter by Name and Address
    public ArrayList<Restaurant> getInRange(int offset, int size, String searchKey) throws SQLException, ClassNotFoundException {
        try (Connection connect = DbHelper.getConnection()) {
            PreparedStatement statement = connect.prepareStatement(
                    "SELECT * FROM restaurants "
                            + "WHERE Name LIKE ? OR Address LIKE ? "
                            + "LIMIT ?, ?;");
            statement.setString(1, "%" + searchKey + "%");
            statement.setString(2, "%" + searchKey + "%");
            statement.setInt(3, offset);
            statement.setInt(4, size);

            ResultSet resultSet = statement.executeQuery();

            return convertResultSetToArray(resultSet);
        }
    }

    public int count() throws SQLException, ClassNotFoundException {
        try (Connection connect = DbHelper.getConnection()) {
            Statement statement = connect.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT COUNT(ID) FROM restaurants;");

            resultSet.first();

            int numberOfRecords = resultSet.getInt(1);
            return numberOfRecords;
        }
    }

    public int count(String filter) throws SQLException, ClassNotFoundException {
        try (Connection connect = DbHelper.getConnection()) {
            PreparedStatement statement = connect.prepareStatement(
                      "SELECT COUNT(ID) "
            		+ "FROM restaurants "
                    + "WHERE Name LIKE ? OR Address LIKE ?;");

            statement.setString(1, "%" + filter + "%");
            statement.setString(2, "%" + filter + "%");

            ResultSet resultSet = statement.executeQuery();

            resultSet.first();

            int numberOfRecords = resultSet.getInt(1);
            return numberOfRecords;
        }
    }

    // Get restaurant by id, return null if not exist
    public Restaurant getByID(int id) throws ClassNotFoundException, SQLException {
        try (Connection connect = DbHelper.getConnection()) {
            PreparedStatement statement = connect.prepareStatement(
                      "SELECT * "
                    + "FROM restaurants "
                    + "WHERE ID = ?;");

            statement.setInt(1, id);
            ResultSet resultSet = statement.executeQuery();

            var restaurantArray = convertResultSetToArray(resultSet);
            if (restaurantArray.isEmpty()) {
                return null;
            }
            return restaurantArray.getFirst();
        }
    }

    public boolean add(Restaurant restaurant) throws ClassNotFoundException, SQLException {
        try (Connection connect = DbHelper.getConnection()) {
            PreparedStatement statement = connect.prepareStatement(
                      "INSERT INTO restaurants (Name, Contact, Owner, Address) "
                    + "VALUES (?, ?, ?, ?);");

            statement.setString(1, restaurant.getName());
            statement.setString(2, restaurant.getContact());
            statement.setString(3, restaurant.getOwner());
            statement.setString(4, restaurant.getAddress());

            int affectedRows = statement.executeUpdate();
            return affectedRows == 1;
        }
    }

    public boolean update(Restaurant restaurant) throws ClassNotFoundException, SQLException {
        try (Connection connect = DbHelper.getConnection()) {
            PreparedStatement statement = connect.prepareStatement(
                      "UPDATE restaurants "
                    + "SET Name = ?, Contact = ?, Owner = ?, Address = ? "
                    + "WHERE ID = ?;");

            statement.setString(1, restaurant.getName());
            statement.setString(2, restaurant.getContact());
            statement.setString(3, restaurant.getOwner());
            statement.setString(4, restaurant.getAddress());
            statement.setInt(5, restaurant.getId());

            int affectedRows = statement.executeUpdate();
            return affectedRows == 1;
        }
    }

    public boolean delete(int id) throws ClassNotFoundException, SQLException {
        try (Connection connect = DbHelper.getConnection()) {
            PreparedStatement statement = connect.prepareStatement(
                    "DELETE FROM restaurants WHERE ID = ?");

            statement.setInt(1, id);

            int affectedRows = statement.executeUpdate();
            return affectedRows == 1;
        }
    }

    private ArrayList<Restaurant> convertResultSetToArray(ResultSet resultSet) throws SQLException {
        var restaurants = new ArrayList<Restaurant>();

        while (resultSet.next()) {
            int id = resultSet.getInt(1);
            String name = resultSet.getString(2);
            String contact = resultSet.getString(3);
            String owner = resultSet.getString(4);
            String address = resultSet.getString(5);

            restaurants.add(new Restaurant(id, name, contact, owner, address));
        }

        return restaurants;
    }
}
