package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bo.RestaurantBO;

@WebServlet("/Admin/Restaurant/Details")
public class DetailsRestaurantServlet extends BaseServlet {
    private static final long serialVersionUID = 1L;

    private RestaurantBO restaurantBO = new RestaurantBO();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String returnUrl = request.getParameter("returnUrl");
        if (returnUrl == null) {
            returnUrl = request.getContextPath() + "/Admin/Restaurant";
        }
        request.setAttribute("returnUrl", returnUrl);

        String idStr = request.getParameter("id");

        if (idStr == null) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "ID is required");
            return;
        }

        try {
            int id = Integer.parseInt(idStr);

            var restaurant = restaurantBO.getById(id);
            request.setAttribute("restaurant", restaurant);

            returnView("/Admin/Restaurant/details.jsp", request, response);
        } catch (Exception e) {
            throw new ServletException(e);
        }
       
    }
}
