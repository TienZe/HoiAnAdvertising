package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.AlertMessage;
import model.bo.AdminBO;

@WebServlet("/Login")
public class LoginServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	
	private AdminBO adminBO = new AdminBO();
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String error = request.getParameter("error");
		if ("need-authen".equals(error)) {
			request.setAttribute("need-authen-error", true);
		}
		
		returnView("/Admin/login.jsp", request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		try {
			AlertMessage alertMessage = null;
			TempData tempData = new TempData();
			
			if (adminBO.isExistAccount(username, password)) {
				var session = request.getSession();
				session.setAttribute("username", username);
				
				alertMessage = new AlertMessage("Hello " + username, "success");
				tempData.put("alertMessage", alertMessage);
				redirectTo("Admin", tempData, request, response);
				return;
			}
			
			alertMessage = new AlertMessage("Sorry, your username or password is incorrect!", "danger");
			tempData.put("alertMessage", alertMessage);
			redirectTo("Login", tempData, request, response);
		} catch (Exception e) {
			throw new ServletException(e);
		}
	}

}
