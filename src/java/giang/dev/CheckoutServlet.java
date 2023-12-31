/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package giang.dev;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import giang.dev.data.dao.DatabaseDao;
import giang.dev.data.dao.OrderDao;
import giang.dev.data.model.Order;
import giang.dev.data.model.OrderItem;
import giang.dev.data.model.User;
import giang.dev.util.StringHelper;

/**
 *
 * @author ACER NITRO
 */
public class CheckoutServlet extends BaseServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        if (user == null) {
            response.sendRedirect("LoginServlet");
        } else {
            processCheckout(request, user.getId());
            response.sendRedirect("CartServlet");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    private void processCheckout(HttpServletRequest request, int userId) {
        OrderDao orderDao = DatabaseDao.getInstance().getOrderDao();
        String code = StringHelper.randomString(9);
        Order order = new Order(code, Order.PENDING, userId);
        orderDao.insert(order);

        order = orderDao.findByCode(order.getCode());
        HttpSession session = request.getSession();
        List<OrderItem> cart = (List<OrderItem>) session.getAttribute("cart");
        if (cart != null) {
            for (OrderItem orderItem : cart) {
                orderItem.setOrderId(order.getId());
                DatabaseDao.getInstance().getOrderItemDao().insert(orderItem);
            }
        }
        session.setAttribute("Messages", "Checkout Success");
        session.removeAttribute("cart");
    }

}
