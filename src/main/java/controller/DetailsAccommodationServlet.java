package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bo.AccommodationBO;

@WebServlet("/Admin/Accommodation/Details")
public class DetailsAccommodationServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
    
	private AccommodationBO accommodationBO = new AccommodationBO();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String returnUrl = request.getParameter("returnUrl");
		if (returnUrl == null) {
			returnUrl = request.getContextPath() + "/Admin";
		}
		request.setAttribute("returnUrl", returnUrl);
		
		String idStr = request.getParameter("id");
		
		if (idStr == null) {
			response.sendError(HttpServletResponse.SC_BAD_REQUEST, "ID is required");
			return;
		}
		
		try {
			int id = Integer.parseInt(idStr);
			
			var accom = accommodationBO.getById(id);
			request.setAttribute("accommodation", accom);
			
			returnView("/Admin/Accommodation/details.jsp", request, response);
		} catch (Exception e) {
			throw new ServletException(e);
		}
	}
}
