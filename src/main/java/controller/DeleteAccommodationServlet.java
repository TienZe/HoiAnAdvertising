package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.AlertMessage;
import model.bo.AccommodationBO;

@WebServlet({"/Admin/Accommodation/Delete", "/Admin/Accommodation/Delete/"})
public class DeleteAccommodationServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	
	private AccommodationBO accommodationBO = new AccommodationBO();
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			int id = Integer.parseInt(request.getParameter("id"));
			boolean result = accommodationBO.delete(id);
			
			AlertMessage alertMessage = null;
			if (result) {
				alertMessage = new AlertMessage("Delete accommodation successfully", "success");
			} else {
				alertMessage = new AlertMessage("Delete accommodation with error result", "danger");
			}
			
			TempData tempData = new TempData();
			tempData.put("alertMessage", alertMessage);
			
			redirectTo("Admin/Accommodation", tempData, request, response);
		} catch (Exception e) {
			throw new ServletException(e);
		}
	}
}
