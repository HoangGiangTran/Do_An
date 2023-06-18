/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package giang.dev.admin.order;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import giang.dev.BaseServlet;
import giang.dev.data.dao.DatabaseDao;
import giang.dev.data.dao.OrderDao;
import giang.dev.data.model.Order;

/**
 *
 * @author ACER NITRO
 */
public class IndexOrderServlet extends BaseServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            OrderDao orderDao = DatabaseDao.getInstance().getOrderDao();
            // Tìm xong đưa vào 1 list <order>
            List<Order> orderList = orderDao.findAll();
            
            // set dữ liệu lên 
            request.setAttribute("orderList", orderList);
            request.getRequestDispatcher("admin/order/index.jsp").include(request, response);
            
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

   

}
