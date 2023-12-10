package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import model.bean.Accommodation;

public class AccommodationDAO {
	public ArrayList<Accommodation> getInRange(int offset, int size) throws SQLException, ClassNotFoundException {
		try (Connection connect = DbHelper.getConnection()) {
            PreparedStatement statement = connect.prepareStatement("SELECT * FROM accommodations LIMIT ?, ?;");
            statement.setInt(1, offset);
            statement.setInt(2, size);
            
            ResultSet resultSet = statement.executeQuery();

            return convertResultSetToArray(resultSet);
        }
	}
	
	public int count() throws SQLException, ClassNotFoundException {
		try (Connection connect = DbHelper.getConnection()) {
            Statement statement = connect.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT COUNT(ID) FROM accommodations;");
            
            resultSet.first();
            
            int numberOfRecords = resultSet.getInt(1);
            return numberOfRecords;
        }
	}
	

	private ArrayList<Accommodation> convertResultSetToArray(ResultSet resultSet) throws SQLException {
		var accommodations = new ArrayList<Accommodation>();
		
		while (resultSet.next()) {
            int id = resultSet.getInt(1);
            String name = resultSet.getString(2);
            String contact = resultSet.getString(3);
            String owner = resultSet.getString(4);
            String address = resultSet.getString(5);
            String website = resultSet.getString(6);
            
            accommodations.add(new Accommodation(id, name, contact, owner, address, website));
        }
		
		return accommodations;
	}
}
