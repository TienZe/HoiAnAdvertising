package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.AlertMessage;
import model.bean.Accommodation;
import model.bean.Event;
import model.bo.AccommodationBO;
import model.bo.EventBO;

/**
 * Servlet implementation class CreateAccommodationServlet
 */
@WebServlet("/Admin/Event/Create")
public class CreateEventServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	
	private EventBO eventBO = new EventBO();
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		returnView("/Admin/Event/create.jsp", request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String timezone = request.getParameter("timezone");
		String location = request.getParameter("location");
		
		// Server validation logic ...
		
		var createdEvent = new Event(name, timezone, location);
		
		try {
			boolean result = eventBO.add(createdEvent);
			
			AlertMessage alertMessage = null;
			if (result) {
				alertMessage = new AlertMessage("Add new event successfully", "success");
			} else {
				alertMessage = new AlertMessage("Add new event with error result", "danger");
			}
			
			TempData tempData = new TempData();
			tempData.put("alertMessage", alertMessage);
			
			redirectTo("Admin/Event", tempData, request, response);
		} catch (Exception e) {
			throw new ServletException(e);
		}
	}
}
