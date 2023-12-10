package model.bo;

import java.sql.SQLException;
import java.util.ArrayList;

public interface PaginatedBO<T> {
	
	// Get obj T on page "pageIndex"
	public ArrayList<T> getPage(int pageIndex, int pageSize) throws ClassNotFoundException, SQLException; 
	
	// get total obj T in Database
	int count() throws ClassNotFoundException, SQLException; 
}
