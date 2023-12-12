package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AdminDAO {
	public boolean isExistAccount(String username, String password) throws SQLException, ClassNotFoundException {
		try (Connection connect = DbHelper.getConnection()) {
            PreparedStatement statement = connect.prepareStatement(
            		   "SELECT Username "
                     + "FROM admins "
                     + "WHERE Username = ? AND Password = ?;");

            statement.setString(1, username);
            statement.setString(2, password);
            
            ResultSet resultSet = statement.executeQuery();
           
            return resultSet.first();
        }
	}
}
