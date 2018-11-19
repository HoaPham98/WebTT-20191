package com.nhom17.controllers;

import com.nhom17.model.dto.Phim;
import com.nhom17.model.reposity.impl.PhimReposity;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

public class HomeController extends BaseServlet {

    private static final long serialVersionUID = 1L;
    private RequestDispatcher requestDispatcher = null;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PhimReposity repository = new PhimReposity();
        ArrayList<Phim> nowShowingMovies = repository.getNowShowingMovies();
        ArrayList<Phim> upComingMovies = repository.getUpComingMovies();

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
