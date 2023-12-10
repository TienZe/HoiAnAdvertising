package model.bo;

import java.sql.SQLException;
import java.util.ArrayList;

import model.bean.Accommodation;
import model.dao.AccommodationDAO;

public class AccommodationBO implements PaginatedBO<Accommodation> {
	private AccommodationDAO accommodationDAO = new AccommodationDAO();
	
	public ArrayList<Accommodation> getPage(int pageIndex, int pageSize) throws ClassNotFoundException, SQLException {
		return accommodationDAO.getInRange((pageIndex - 1) * pageSize, pageSize);
	}
	
	public int count() throws ClassNotFoundException, SQLException {
		return accommodationDAO.count();
	}
}
