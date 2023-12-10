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
    
    public int getIndexOfFirstItem() {
    	return indexOfFirstItem;
    }
}
