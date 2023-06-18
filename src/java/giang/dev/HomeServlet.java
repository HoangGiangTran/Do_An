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
import java.util.List;

/**
 *
 * @author Admin
 */
public class HomeServlet extends BaseServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        super.doGet(request, response);
        
        List<Product> productHot = DatabaseDao.getInstance().getProductDao().hot();
        List<Product> productLatest = DatabaseDao.getInstance().getProductDao().latest();
        List<Product> productList = DatabaseDao.getInstance().getProductDao().findAll();

        request.setAttribute("productLatest", productLatest);
        request.setAttribute("productHot", productHot);
        request.setAttribute("productList", productList);
        request.getRequestDispatcher("home.jsp").include(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

}
