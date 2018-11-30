package com.nhom17.controllers;

import com.nhom17.model.dto.ThanhVien;
import com.nhom17.model.reposity.impl.ThanhVienDAO;
import com.nhom17.util.AppUtils;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class LoginControllerServlet extends BaseServlet {
    private static final long serialVersionUID = 1L;

//    public LoginControllerServlet() {
//        super();
//    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String userName = request.getParameter("username");
        String password = request.getParameter("pass");
        ThanhVien userAccount = ThanhVienDAO.getInstance().getByUserNamePass(userName, password);
 
        if (userAccount == null) {
            String errorMessage = "Invalid userName or Password";
 
            request.setAttribute("errorMessage", errorMessage);
 
            RequestDispatcher dispatcher //
                    = this.getServletContext().getRequestDispatcher("/login_page");
 
            dispatcher.forward(request, response);
            return;
        }
 
        AppUtils.storeLoginedUser(request.getSession(), userAccount);
 
        // 
        int redirectId = -1;
        try {
            redirectId = Integer.parseInt(request.getParameter("redirectId"));
        } catch (Exception e) {
        }
        String requestUri = AppUtils.getRedirectAfterLoginUrl(request.getSession(), redirectId);
        if (requestUri != null) {
            response.sendRedirect(requestUri);
        } else {
            // Mặc định sau khi đăng nhập thành công
            // chuyển hướng về trang /userInfo
            response.sendRedirect(request.getContextPath() + "/");
        }
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher //
                = request.getRequestDispatcher("/login_page");
        dispatcher.forward(request, response);
        String userName = request.getParameter("email");
        String password = request.getParameter("pass");
        ThanhVien userAccount = ThanhVienDAO.getInstance().getByUserNamePass(userName, password);

        if (userAccount == null) {
            String errorMessage = "Invalid userName or Password";

            request.setAttribute("errorMessage", errorMessage);

            dispatcher //
                    = request.getRequestDispatcher("/login_page");

            dispatcher.forward(request, response);
            return;
        }
        System.out.println("Da query ra 1 user != null");
        AppUtils.storeLoginedUser(request.getSession(), userAccount);

        //
        int redirectId = -1;
        try {
            redirectId = Integer.parseInt(request.getParameter("redirectId"));
        } catch (Exception e) {
        }
        String requestUri = AppUtils.getRedirectAfterLoginUrl(request.getSession(), redirectId);
        if (requestUri != null) {
            response.sendRedirect(requestUri);
        } else {
            // Mặc định sau khi đăng nhập thành công
            // chuyển hướng về trang /home
            response.sendRedirect(request.getContextPath() + "/home");
        }

    }
}
