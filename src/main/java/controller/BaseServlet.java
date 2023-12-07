package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class BaseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void returnView(String pathToView, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher(pathToView).forward(request, response);
	}
}
