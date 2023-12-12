package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.AlertMessage;
import model.bo.RestaurantBO;

@WebServlet({"/Admin/Restaurant/Delete", "/Admin/Restaurant/Delete/"})
public class DeleteRestaurantServlet extends BaseServlet {
    private static final long serialVersionUID = 1L;

    private RestaurantBO restaurantBO = new RestaurantBO();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            int id = Integer.parseInt(request.getParameter("id"));
            boolean result = restaurantBO.delete(id);

            AlertMessage alertMessage = null;
            if (result) {
                alertMessage = new AlertMessage("Delete restaurant successfully", "success");
            } else {
                alertMessage = new AlertMessage("Delete restaurant with error result", "danger");
            }

            TempData tempData = new TempData();
            tempData.put("alertMessage", alertMessage);

            redirectTo("Admin/Restaurant", tempData, request, response);
        } catch (Exception e) {
            throw new ServletException(e);
        }
    }
}
