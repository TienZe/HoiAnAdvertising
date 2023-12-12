package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.BaseServlet.TempData;
import dto.AlertMessage;
import model.bean.Restaurant;
import model.bo.RestaurantBO;

@WebServlet("/Admin/Restaurant/Update")
public class UpdateRestaurantServlet extends BaseServlet {
    private static final long serialVersionUID = 1L;

    private RestaurantBO restaurantBO = new RestaurantBO();

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String contact = request.getParameter("contact");
        String owner = request.getParameter("owner");
        String address = request.getParameter("address");

        // Server validation logic ...

        var updatedRestaurant = new Restaurant(id, name, contact, owner, address);

        try {
            boolean result = restaurantBO.update(updatedRestaurant);

            AlertMessage alertMessage = null;
            if (result) {
                alertMessage = new AlertMessage("Update restaurant successfully", "success");
            } else {
                alertMessage = new AlertMessage("Update restaurant with error result", "danger");
            }

            TempData tempData = new TempData();
            tempData.put("alertMessage", alertMessage);

            redirectTo("Admin/Restaurant", tempData, request, response);
        } catch (Exception e) {
            throw new ServletException(e);
        }
    }
}
