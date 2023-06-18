/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package giang.dev;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import giang.dev.data.dao.DatabaseDao;
import giang.dev.data.model.Category;
import giang.dev.data.model.Product;

/**
 *
 * @author ACER NITRO
 */
public class CategoryServlet extends BaseServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        super.doGet(request, response);
        int categoryId = Integer.parseInt(request.getParameter("categoryId"));
        Category category = DatabaseDao.getInstance().getCategoryDao().find(categoryId);
        List<Product> productList = DatabaseDao.getInstance().getProductDao().findByCategory(categoryId);

        request.setAttribute("productList", productList);
        request.setAttribute("category", category);
        request.getRequestDispatcher("category.jsp").include(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

}
