package com.nhom17.controllers;

import com.nhom17.model.dto.Ghe;
import com.nhom17.model.dto.Ve;
import com.nhom17.model.reposity.impl.GheDao;
import com.nhom17.model.reposity.impl.VeDAO;
import org.codehaus.jettison.json.JSONException;
import org.codehaus.jettison.json.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

@WebServlet("/ajax/seat")
public class GheServlet extends BaseServlet {


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String maXuatChieu = request.getParameter("maXuatChieu");
        ArrayList<Ghe> gheList = GheDao.createGheReposity().getSoldByXuatChieu(maXuatChieu);
        JSONObject maGhe = null;
        for (Ghe ghe : gheList) {
            try {
                maGhe = new JSONObject();
                maGhe.put("maGhe", ghe.getMaGhe());
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        JSONObject json = new JSONObject();
        try {
            json.put("status", "true");
            json.put("data", maGhe);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        String output = json.toString();
        PrintWriter writer = response.getWriter();
        writer.write(output);
        writer.close();
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) {
        String maGhe = request.getParameter("maGhe");
        String maXuatChieu = request.getParameter("maXuatchieu");
        ArrayList<Ve> veList = VeDAO.createVeReposity().getVeByMaXCMaGhe(maXuatChieu,maGhe);
        for (Ve ve: veList) {
            ve.setMaTrangThaiVe(2);
        }
        JSONObject json = new JSONObject();
        try {
            json.put("status", "true");
        } catch (JSONException e) {
            e.printStackTrace();
        }
        String output = json.toString();
        PrintWriter writer = null;
        try {
            writer = response.getWriter();
        } catch (IOException e) {
            e.printStackTrace();
        }
        writer.write(output);
        writer.close();

    }
}
