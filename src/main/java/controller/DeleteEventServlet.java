package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.AlertMessage;
import model.bo.AccommodationBO;
import model.bo.EventBO;

@WebServlet({"/Admin/Event/Delete", "/Admin/Event/Delete/"})
public class DeleteEventServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	
	private EventBO eventBO = new EventBO();
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			int id = Integer.parseInt(request.getParameter("id"));
			boolean result = eventBO.delete(id);
			
			AlertMessage alertMessage = null;
			if (result) {
				alertMessage = new AlertMessage("Delete event successfully", "success");
			} else {
				alertMessage = new AlertMessage("Delete event with error result", "danger");
			}
			
			TempData tempData = new TempData();
			tempData.put("alertMessage", alertMessage);
			
			redirectTo("Admin/Event", tempData, request, response);
		} catch (Exception e) {
			throw new ServletException(e);
		}
	}
}
