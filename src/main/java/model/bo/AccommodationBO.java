package model.bo;

import java.sql.SQLException;
import java.util.ArrayList;

import model.bean.Accommodation;
import model.dao.AccommodationDAO;

public class AccommodationBO implements PaginatedBO<Accommodation> {
	private AccommodationDAO accommodationDAO = new AccommodationDAO();
	
	@Override
	public ArrayList<Accommodation> getPage(int pageIndex, int pageSize) throws ClassNotFoundException, SQLException {
		return accommodationDAO.getInRange((pageIndex - 1) * pageSize, pageSize);
	}
	
	@Override
	public int count() throws ClassNotFoundException, SQLException {
		return accommodationDAO.count();
	}
	
	@Override
	public ArrayList<Accommodation> getPage(int pageIndex, int pageSize, String searchKey) throws ClassNotFoundException, SQLException {
		return accommodationDAO.getInRange((pageIndex - 1) * pageSize, pageSize, searchKey);
	}


	@Override
	public int count(String filter) throws ClassNotFoundException, SQLException {
		return accommodationDAO.count(filter);
	}
	
	public Accommodation getById(int id) throws ClassNotFoundException, SQLException {
		return accommodationDAO.getByID(id);
	}
	
}
