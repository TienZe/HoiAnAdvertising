package model.bo;

import java.sql.SQLException;
import java.util.ArrayList;

import dto.PaginatedList;

public interface PaginatedBO<T> { // BO có khả năng phân trang
	
	// Get obj T on page "pageIndex"
	public ArrayList<T> getPage(int pageIndex, int pageSize) throws ClassNotFoundException, SQLException;
	
	// Get obj T with filter "searchKey" on page "pageIndex"
	public ArrayList<T> getPage(int pageIndex, int pageSize, String searchKey) throws ClassNotFoundException, SQLException;
	
	// Get total obj T in Database
	int count() throws ClassNotFoundException, SQLException;

	// Get total obj T in Database with filter "filter"
	int count(String filter) throws ClassNotFoundException, SQLException;
	
	//  Phân trang
	public default PaginatedList<T> createPaginatedList(int pageIndex, int pageSize) 
			throws ClassNotFoundException, SQLException {
		
    	var items = getPage(pageIndex, pageSize); // items hiển thị lên "pageIndex"
    	
    	// Tính số lượng trang
    	int count = count();
    	int totalPages = Math.ceilDiv(count, pageSize);
    	
    	return new PaginatedList<T>(items, pageIndex, pageSize, totalPages, count);
    }
	
	// Phân trang phiên bản có filter bởi "searchKey"
	public default PaginatedList<T> createPaginatedList(int pageIndex, int pageSize, String searchKey) 
			throws ClassNotFoundException, SQLException {
		
    	var items = getPage(pageIndex, pageSize, searchKey); // items hiển thị lên "pageIndex"
    	
    	// Tính số lượng trang
    	int count = count(searchKey);
    	int totalPages = Math.ceilDiv(count, pageSize);
    	
    	return new PaginatedList<T>(items, pageIndex, pageSize, totalPages, count);
    }
}
