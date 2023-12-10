package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import model.bean.Event;

public class EventDAO {
	public ArrayList<Event> getInRange(int offset, int size) throws SQLException, ClassNotFoundException {
		try (Connection connect = DbHelper.getConnection()) {
            PreparedStatement statement = connect.prepareStatement("SELECT * FROM events LIMIT ?, ?;");
            statement.setInt(1, offset);
            statement.setInt(2, size);
            
            ResultSet resultSet = statement.executeQuery();

            return convertResultSetToArray(resultSet);
        }
	}
	
	// Select accom, lọc theo Name và Address
	public ArrayList<Event> getInRange(int offset, int size, String searchKey) throws SQLException, ClassNotFoundException {
		try (Connection connect = DbHelper.getConnection()) {
            PreparedStatement statement = connect.prepareStatement(
            		"SELECT * FROM events "
            	  + "WHERE Name LIKE ? OR Timezone LIKE ? OR Location LIKE ? "
            	  + "LIMIT ?, ?;");
            statement.setString(1, "%" + searchKey + "%");
            statement.setString(2, "%" + searchKey + "%");
            statement.setString(3, "%" + searchKey + "%");
            
            statement.setInt(4, offset);
            statement.setInt(5, size);
            
            ResultSet resultSet = statement.executeQuery();

            return convertResultSetToArray(resultSet);
        }
	}
	
	public int count() throws SQLException, ClassNotFoundException {
		try (Connection connect = DbHelper.getConnection()) {
            Statement statement = connect.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT COUNT(ID) FROM events;");
            
            resultSet.first();
            
            int numberOfRecords = resultSet.getInt(1);
            return numberOfRecords;
        }
	}
	
	public int count(String filter) throws SQLException, ClassNotFoundException {
		try (Connection connect = DbHelper.getConnection()) {
            PreparedStatement statement = connect.prepareStatement(
            		   "SELECT COUNT(ID) "
                     + "FROM events "
                     + "WHERE Name LIKE ? OR Timezone LIKE ? OR Location LIKE ?;");

            statement.setString(1, "%" + filter + "%");
            statement.setString(2, "%" + filter + "%");
            statement.setString(3, "%" + filter + "%");
            
            ResultSet resultSet = statement.executeQuery();
           
            resultSet.first();
            
            int numberOfRecords = resultSet.getInt(1);
            return numberOfRecords;
        }
	}
	
	// Get event by id, if does not exist then return null
	public Event getByID(int id) throws ClassNotFoundException, SQLException {
		try (Connection connect = DbHelper.getConnection()) {
            PreparedStatement statement = connect.prepareStatement(
            		   "SELECT * "
                     + "FROM events "
                     + "WHERE ID = ?;");

            statement.setInt(1, id);
            ResultSet resultSet = statement.executeQuery();
           
            var accomArray = convertResultSetToArray(resultSet);
            if (accomArray.isEmpty()) {
            	return null;
            }
            return accomArray.getFirst();
        }
	}
	
	public boolean add(Event event) throws ClassNotFoundException, SQLException {
		try (Connection connect = DbHelper.getConnection()) {
            PreparedStatement statement = connect.prepareStatement(
            		  "INSERT INTO events (Name, Timezone, Location) "
            		+ "VALUES (?, ?, ?);" );
            		  
            statement.setString(1, event.getName());
            statement.setString(2, event.getTimeZone());
            statement.setString(3, event.getLocation());
            
            int affectedRows = statement.executeUpdate();
            return affectedRows == 1;
        }
	}
	
	public boolean update(Event event) throws ClassNotFoundException, SQLException {
		try (Connection connect = DbHelper.getConnection()) {
            PreparedStatement statement = connect.prepareStatement(
            		  "UPDATE events "
            		+ "SET Name = ?, Timezone = ?, Location = ? "
            		+ "WHERE ID = ?;");
            		  
            statement.setString(1, event.getName());
            statement.setString(2, event.getTimeZone());
            statement.setString(3, event.getLocation());
            statement.setInt(4, event.getId());
            
            int affectedRows = statement.executeUpdate();
            return affectedRows == 1;
        }
	}
	
	public boolean delete(int id) throws ClassNotFoundException, SQLException {
		try (Connection connect = DbHelper.getConnection()) {
            PreparedStatement statement = connect.prepareStatement(
            		"DELETE FROM events WHERE ID = ?");
            		  
            statement.setInt(1, id);
            
            int affectedRows = statement.executeUpdate();
            return affectedRows == 1;
        }
	}
	
	private ArrayList<Event> convertResultSetToArray(ResultSet resultSet) throws SQLException {
		var events = new ArrayList<Event>();
		
		while (resultSet.next()) {
            int id = resultSet.getInt(1);
            String name = resultSet.getString(2);
            String timeZone = resultSet.getString(3);
            String location = resultSet.getString(4);
            
            events.add(new Event(id, name, timeZone, location));
        }
		
		return events;
	}
}
