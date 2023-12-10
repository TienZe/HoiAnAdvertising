package dto;

import java.sql.SQLException;
import java.util.ArrayList;

import model.bo.PaginatedBO;

public class PaginatedList<T> {
	private static final long serialVersionUID = 1L;
	
	private int pageIndex;
	private int totalPages;
	private int pageSize;
	private int indexOfFirstItem;
	
	private ArrayList<T> items;
    
    public PaginatedList(ArrayList<T> items, int pageIndex, int pageSize, int totalPages) {
    	this.items = items;
    	
    	this.pageIndex = pageIndex;
    	this.totalPages = totalPages;
    	this.pageSize = pageSize;
    	
    	this.indexOfFirstItem = (pageIndex - 1) * pageSize + 1;
    }
    
    public static <T> PaginatedList<T> create(PaginatedBO<T> paginatedBO, int pageIndex, int pageSize) throws ClassNotFoundException, SQLException {
    	var items = paginatedBO.getPage(pageIndex, pageSize);
    	
    	int count = paginatedBO.count();
    	int totalPages = Math.ceilDiv(count, pageSize);
    	
    	return new PaginatedList<T>(items, pageIndex, pageSize, totalPages);
    }
    
    // Getter
    public int getPageIndex() {
        return pageIndex;
    }

    public int getTotalPages() {
        return totalPages;
    }

    public int getPageSize() {
        return pageSize;
    }

    public ArrayList<T> getItems() {
        return items;
    }
}
