/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package giang.dev.admin.user;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import giang.dev.BaseServlet;
import giang.dev.data.dao.DatabaseDao;
import giang.dev.data.dao.UserDAO;
import giang.dev.data.model.User;

/**
 *
 * @author ACER NITRO
 */
public class EditUserServlet extends BaseServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int userId = Integer.parseInt(request.getParameter("userId"));
        User user = DatabaseDao.getInstance().getUserDao().find(userId);
        request.setAttribute("user", user);
        request.getRequestDispatcher("admin/user/edit.jsp").include(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        UserDAO userDao = DatabaseDao.getInstance().getUserDao();
        int userId = Integer.parseInt(request.getParameter("userId"));
        User user = userDao.find(userId);
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String role = request.getParameter("role");

        user.setEmail(email);
        user.setPassword(password);
        user.setRole(role);

       userDao.update(user);

        response.sendRedirect("IndexUserServlet");
    }

}
