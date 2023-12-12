package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.PaginatedList;
import model.bean.Event;
import model.bo.EventBO;


@WebServlet("/Event")
public class ListEventAPIServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	
    private EventBO eventBO = new EventBO();
    private final int defaultPageSize = 6;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			int pageIndex = 1;
			if (request.getParameter("pageIndex") != null) {
				pageIndex = Integer.parseInt(request.getParameter("pageIndex"));
			}
			
			int pageSize = defaultPageSize;
			if (request.getParameter("pageSize") != null) {
				pageSize = Integer.parseInt(request.getParameter("pageSize"));
			}
			
			PaginatedList<Event> paginatedList = null;
			
			String searchKey = request.getParameter("searchKey");
			if (searchKey == null || searchKey.isBlank()) {
				paginatedList = eventBO.createPaginatedList(pageIndex, pageSize);	
			} else {
				paginatedList = eventBO.createPaginatedList(pageIndex, pageSize, searchKey);
			}
			
			returnJson(paginatedList, response);
		} catch (Exception e) {
			e.printStackTrace();
			returnError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, e.getMessage(), response);
		}
	}
}
