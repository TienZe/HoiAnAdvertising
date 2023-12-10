package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bo.AccommodationBO;
import model.bo.EventBO;

@WebServlet("/Admin/Event/Details")
public class DetailsEventServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
    
	private EventBO eventBO = new EventBO();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String returnUrl = request.getParameter("returnUrl");
		if (returnUrl == null) {
			returnUrl = request.getContextPath() + "/Admin/Event";
		}
		request.setAttribute("returnUrl", returnUrl);
		
		String idStr = request.getParameter("id");
		
		if (idStr == null) {
			response.sendError(HttpServletResponse.SC_BAD_REQUEST, "ID is required");
			return;
		}
		
		try {
			int id = Integer.parseInt(idStr);
			
			var event = eventBO.getById(id);
			request.setAttribute("event", event);
			
			returnView("/Admin/Event/details.jsp", request, response);
		} catch (Exception e) {
			throw new ServletException(e);
		}
	}
}
