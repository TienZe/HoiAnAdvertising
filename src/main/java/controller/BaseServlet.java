package controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.google.gson.Gson;

import controller.BaseServlet.Error;

public class BaseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void returnView(String pathToView, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher(pathToView).forward(request, response);
	}
	
	protected void returnJson(Object result, HttpServletResponse response) throws IOException {
		// Convert User object to JSON using Gson
        Gson gson = new Gson();
        String json = gson.toJson(result);
        System.out.println("Result json : " + json);

        // Set content type and write JSON response
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(json);
	}
	
	protected void returnError(int errorCode, String errorMessage, HttpServletResponse response) throws IOException {
		response.setStatus(errorCode);
		returnJson(new Error(errorCode, errorMessage), response);
	}
	
	protected void storeTempData(HttpServletRequest request, TempData tempData) {
		var session = request.getSession();
		session.setAttribute("TempData", tempData);
	}
	
	static public class Error {
		private int errorCode = HttpServletResponse.SC_BAD_REQUEST;
		private String errorMessage = "Something went wrong!";
		
		public Error(int errorCode, String errorMessage) {
			this.errorCode = errorCode;
			this.errorMessage = errorMessage;
		}
		
		public Error(int errorCode) {
			this.errorCode = errorCode;
		}
	}
	
	static public class TempData extends HashMap<String, Object> {}
}
