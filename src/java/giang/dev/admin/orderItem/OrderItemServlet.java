/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package giang.dev.admin.OrderItem;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import giang.dev.BaseServlet;
import giang.dev.data.dao.DatabaseDao;
import giang.dev.data.dao.OrderItemDao;
import giang.dev.data.model.OrderItem;

/**
 *
 * @author ACER NITRO
 */
public class OrderItemServlet extends BaseServlet {

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int orderId = Integer.parseInt(request.getParameter("orderId"));
        OrderItemDao orderItemDao = DatabaseDao.getInstance().getOrderItemDao();
        
        List<OrderItem> orderItemList = orderItemDao.findByOder(orderId);

        request.setAttribute("orderItemList", orderItemList);
        request.getRequestDispatcher("admin/orderitem/show.jsp").include(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

}
