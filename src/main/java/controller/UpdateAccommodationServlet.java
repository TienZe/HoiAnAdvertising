package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.BaseServlet.TempData;
import dto.AlertMessage;
import model.bean.Accommodation;
import model.bo.AccommodationBO;

@WebServlet("/Admin/Accommodation/Update")
public class UpdateAccommodationServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	
	private AccommodationBO accommodationBO = new AccommodationBO();
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		String name = request.getParameter("name");
		String contact = request.getParameter("contact");
		String owner = request.getParameter("owner");
		String address = request.getParameter("address");
		String website = request.getParameter("website");
		
		// Server validation logic ...
		
		var updatedAccom = new Accommodation(id, name, contact, owner, address, website);
		
		try {
			boolean result = accommodationBO.update(updatedAccom);
			
			AlertMessage alertMessage = null;
			if (result) {
				alertMessage = new AlertMessage("Update accommodation successfully", "success");
			} else {
				alertMessage = new AlertMessage("Update accommodation with error result", "danger");
			}
			
			TempData tempData = new TempData();
			tempData.put("alertMessage", alertMessage);
			
			redirectTo("Admin/Accommodation", tempData, request, response);
		} catch (Exception e) {
			throw new ServletException(e);
		}
	}

}
