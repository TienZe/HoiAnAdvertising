package model.bo;

import java.sql.SQLException;

import model.dao.AdminDAO;

public class AdminBO {
	private AdminDAO adminDAO = new AdminDAO();
	
	public boolean isExistAccount(String username, String password) throws ClassNotFoundException, SQLException {
		return adminDAO.isExistAccount(username, password);
	}
}
