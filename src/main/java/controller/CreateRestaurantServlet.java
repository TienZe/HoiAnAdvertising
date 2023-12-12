package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.AlertMessage;
import model.bean.Restaurant;
import model.bo.RestaurantBO;

@WebServlet("/Admin/Restaurant/Create")
public class CreateRestaurantServlet extends BaseServlet {
    private static final long serialVersionUID = 1L;

    private RestaurantBO restaurantBO = new RestaurantBO();

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        returnView("/Admin/Restaurant/create.jsp", request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String contact = request.getParameter("contact");
        String owner = request.getParameter("owner");
        String address = request.getParameter("address");

        // Server validation logic ...

        var createdRestaurant = new Restaurant(name, contact, owner, address);

        try {
            boolean result = restaurantBO.add(createdRestaurant);

            AlertMessage alertMessage = null;
            if (result) {
                alertMessage = new AlertMessage("Add new restaurant successfully", "success");
            } else {
                alertMessage = new AlertMessage("Add new restaurant with error result", "danger");
            }

            TempData tempData = new TempData();
            tempData.put("alertMessage", alertMessage);

            redirectTo("Admin/Restaurant", tempData, request, response);
        } catch (Exception e) {
            throw new ServletException(e);
        }
    }
}
