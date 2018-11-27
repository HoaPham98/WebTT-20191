package com.nhom17.controllers;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;


public abstract class BaseServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private RequestDispatcher reqDispatcher = null;

    protected BaseServlet() {

    }

    @Override
    public void destroy() {
        super.destroy();
    }

    protected void setRequestDispatcher(RequestDispatcher reqDispatcher) {
        this.reqDispatcher = reqDispatcher;
    }

    protected RequestDispatcher getRequestDispatcher() {
        return reqDispatcher;
    }
}
