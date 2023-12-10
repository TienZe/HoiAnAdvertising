package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.AlertMessage;
import model.bean.Accommodation;
import model.bo.AccommodationBO;

/**
 * Servlet implementation class CreateAccommodationServlet
 */
@WebServlet("/Admin/Accommodation/Create")
public class CreateAccommodationServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	
	private AccommodationBO accommodationBO = new AccommodationBO();
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		returnView("/Admin/Accommodation/create.jsp", request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String contact = request.getParameter("contact");
		String owner = request.getParameter("owner");
		String address = request.getParameter("address");
		String website = request.getParameter("website");
		
		// Server validation logic ...
		
		var createdAccom = new Accommodation(name, contact, owner, address, website);
		
		try {
			boolean result = accommodationBO.add(createdAccom);
			
			AlertMessage alertMessage = null;
			if (result) {
				alertMessage = new AlertMessage("Add new accommodation successfully", "success");
			} else {
				alertMessage = new AlertMessage("Add new accommodation with error result", "danger");
			}
			
			TempData tempData = new TempData();
			tempData.put("alertMessage", alertMessage);
			
			redirectTo("Admin/Accommodation", tempData, request, response);
		} catch (Exception e) {
			throw new ServletException(e);
		}
	}
}
