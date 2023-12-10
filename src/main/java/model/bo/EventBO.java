package model.bo;

import java.sql.SQLException;
import java.util.ArrayList;

import model.bean.Event;
import model.dao.EventDAO;


public class EventBO implements PaginatedBO<Event> {
	private EventDAO eventDAO = new EventDAO();
	
	@Override
	public ArrayList<Event> getPage(int pageIndex, int pageSize) throws ClassNotFoundException, SQLException {
		return eventDAO.getInRange((pageIndex - 1) * pageSize, pageSize);
	}
	
	@Override
	public int count() throws ClassNotFoundException, SQLException {
		return eventDAO.count();
	}
	
	@Override
	public ArrayList<Event> getPage(int pageIndex, int pageSize, String searchKey) throws ClassNotFoundException, SQLException {
		return eventDAO.getInRange((pageIndex - 1) * pageSize, pageSize, searchKey);
	}


	@Override
	public int count(String filter) throws ClassNotFoundException, SQLException {
		return eventDAO.count(filter);
	}
	
	public Event getById(int id) throws ClassNotFoundException, SQLException {
		return eventDAO.getByID(id);
	}
//	
//	public boolean add(Accommodation accom) throws ClassNotFoundException, SQLException {
//		return accommodationDAO.add(accom);
//	}
//	
	public boolean update(Event event) throws ClassNotFoundException, SQLException {
		return eventDAO.update(event);
	}
}
