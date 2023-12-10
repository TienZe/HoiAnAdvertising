package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.AlertMessage;
import model.bean.Event;
import model.bo.EventBO;

@WebServlet("/Admin/Event/Update")
public class UpdateEventServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	
	private EventBO eventBO = new EventBO();
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		
		String name = request.getParameter("name");
		String timezone = request.getParameter("timezone");
		String location = request.getParameter("location");
	
		// Server validation logic ...
		
		var updatedEvent = new Event(id, name, timezone, location);
		
		try {
			boolean result = eventBO.update(updatedEvent);
			
			AlertMessage alertMessage = null;
			if (result) {
				alertMessage = new AlertMessage("Update event successfully", "success");
			} else {
				alertMessage = new AlertMessage("Update event with error result", "danger");
			}
			
			TempData tempData = new TempData();
			tempData.put("alertMessage", alertMessage);
			
			redirectTo("Admin/Event", tempData, request, response);
		} catch (Exception e) {
			throw new ServletException(e);
		}
	}

}
