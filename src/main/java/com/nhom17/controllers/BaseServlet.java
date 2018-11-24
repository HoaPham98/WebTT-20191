package com.nhom17.controllers;

import com.nhom17.database.DatabaseConnector;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;


public abstract class BaseServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private DatabaseConnector dbConnector = null;
    private RequestDispatcher reqDispatcher = null;

    protected BaseServlet() {

    }

    protected void createDatabaseConnectorInstance() {
        dbConnector = DatabaseConnector.getInstance();
        dbConnector.createConnection();
    }

    protected void destroyDatabaseConnectorInstance() {
        dbConnector = null;
    }

    @Override
    public void destroy() {
        super.destroy();
    }

    protected DatabaseConnector getDatabaseConnectorInstance() {
        if (dbConnector == null) {
            dbConnector = DatabaseConnector.getInstance();
            dbConnector.createConnection();
        }
        return dbConnector;
    }

    protected void setRequestDispatcher(RequestDispatcher reqDispatcher) {
        this.reqDispatcher = reqDispatcher;
    }

    protected RequestDispatcher getRequestDispatcher() {
        return reqDispatcher;
    }
}
