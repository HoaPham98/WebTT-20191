package com.nhom17.controllers;

import com.nhom17.model.dto.Phim;
import com.nhom17.model.dto.ThanhVien;
import com.nhom17.model.reposity.impl.PhimDao;
import com.nhom17.model.reposity.impl.ThanhVienDAO;
import org.codehaus.jettison.json.JSONException;
import org.codehaus.jettison.json.JSONObject;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

@WebServlet("/ajax/user")
public class checkExistedUsernameServlet extends BaseServlet{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userName = request.getParameter("username");
        ThanhVien thanhVien = ThanhVienDAO.getInstance().getByUserName(userName);
        JSONObject json = new JSONObject();
        if(thanhVien == null) {
            //false;
            //response.setContentType("application/json");
            try {
                json.put("status", "false");
            } catch (JSONException e) {
                e.printStackTrace();
            }

        } else {
            //true;
            //response.setContentType("application/json");
            try {
                json.put("status", "true");
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        String output = json.toString();
        PrintWriter writer = response.getWriter();
        writer.write(output);
        writer.close();
    }
}
