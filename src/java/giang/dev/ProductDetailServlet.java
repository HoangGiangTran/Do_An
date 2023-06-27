/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package giang.dev;

import giang.dev.data.dao.DatabaseDao;
import giang.dev.data.model.Product;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author Hoang Anh
 */
public class ProductDetailServlet extends BaseServlet {

   @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        super.doGet(request, response);
        
        int productId = Integer.parseInt(request.getParameter("productId"));
        Product product = DatabaseDao.getInstance().getProductDao().find(productId);
        
        
        request.setAttribute("product", product);
        request.getRequestDispatcher("product-detail.jsp").include(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }
}
