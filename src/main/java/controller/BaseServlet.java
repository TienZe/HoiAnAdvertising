package controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.google.gson.Gson;

public class BaseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void returnView(String pathToView, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher(pathToView).forward(request, response);
	}
	
	protected void redirectTo(String relativePathFromProject, HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.sendRedirect(request.getContextPath() + "/" + relativePathFromProject);
	}
	
	// Redirect with TempData
	protected void redirectTo(String relativePathFromProject, TempData tempData, HttpServletRequest request, HttpServletResponse response) throws IOException {
		storeTempData(request, tempData);
		response.sendRedirect(request.getContextPath() + "/" + relativePathFromProject);
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
	
	static public class Identity {
		private String username = "";
		private boolean isAuthenticated = false;
		
		public Identity(String username, boolean isAuthen) {
			this.username = username;
			this.isAuthenticated = isAuthen;
		}
		
		public Identity() {}
		
		public static Identity anonymous() {
			return new Identity();
		}
		
		public static Identity admin(String username) {
			return new Identity(username, true);
		}
		
		public String getUsername() {
	        return username;
	    }
		
		public boolean isAuthenticated() {
	        return isAuthenticated;
	    }
	}
}
