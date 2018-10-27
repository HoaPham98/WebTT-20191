package com.nhom17.controller;

import com.nhom17.BaseServlet;
import com.nhom17.dto.Phim;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(urlPatterns = {"/home"})
public class HomeController extends BaseServlet {

    private static final long serialVersionUID = 1L;
    private RequestDispatcher requestDispatcher = null;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList<Phim> nowShowingMovies = getDatabaseConnectorInstance().getNowShowingMovies();
        ArrayList<Phim> upComingMovies = getDatabaseConnectorInstance().getInComingMovies();

        HttpSession httpSession = request.getSession(false);
        if (httpSession != null) {
            httpSession.invalidate();
        }
        System.out.println(request.getRequestURI());

        request.setAttribute("Now_Showing_Movie_List", nowShowingMovies);
        request.setAttribute("Up_Coming_Movie_List",upComingMovies);

        requestDispatcher = request.getRequestDispatcher("/index.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

    }
}
