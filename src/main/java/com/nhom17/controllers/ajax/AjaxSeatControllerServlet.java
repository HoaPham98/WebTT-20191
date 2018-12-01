package com.nhom17.controllers.ajax;

import com.nhom17.controllers.BaseServlet;
import com.nhom17.model.dto.Ghe;
import com.nhom17.model.dto.Ve;
import com.nhom17.model.reposity.impl.GheDao;
import com.nhom17.model.reposity.impl.VeDAO;
import org.codehaus.jettison.json.JSONArray;
import org.codehaus.jettison.json.JSONException;
import org.codehaus.jettison.json.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/ajax/seat/*")
public class AjaxSeatControllerServlet extends BaseServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String requestedURI = new String(request.getRequestURI());
        switch (requestedURI) {
            case "/ajax/seat":
                getEmptySeats(request, response);
                break;
            case "/ajax/seat/resetSeat":
                resetSession(request, response);
                break;
            default:
                break;
        }

    }

    private void resetSession(HttpServletRequest request, HttpServletResponse response) throws ServletException{
        String maXuatChieu = request.getParameter("maXuatChieu");
        VeDAO veDAO = VeDAO.createVeReposity();
        List<Ve> veList = veDAO.getByShowTimeID(maXuatChieu);
        List<Ve> veChanges = new ArrayList<>();
        for (Ve ve: veList) {
            if (ve.getMaTrangThaiVe() > 0) {
                ve.setMaTrangThaiVe(0);
                veChanges.add(ve);
            }
        }
        veDAO.update(veChanges);
    }

    private void getEmptySeats(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String maXuatChieu = request.getParameter("maXuatChieu");
        if (maXuatChieu == null) {
            PrintWriter writer = response.getWriter();
            String output = "{ \"status\" : \"false\", \"data\" : \"maXuatChieu is not available!\" }";
            writer.write(output);
            writer.close();
            return;
        }
        List<Ghe> gheList = GheDao.createGheReposity().getSoldByXuatChieu(maXuatChieu);
        JSONObject maGhe = null;
        JSONArray data = new JSONArray();
        for (Ghe ghe : gheList) {
            try {
                maGhe = new JSONObject();
                maGhe.put("maGhe", ghe.getMaGhe());
                data.put(maGhe);
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        JSONObject json = new JSONObject();
        try {
            json.put("status", "true");
            json.put("data", data);
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
        int trangthai = 2;
        try {
            trangthai = Integer.parseInt(request.getParameter("trangthai"));
        } catch (Exception e) {
            e.printStackTrace();
            trangthai = 2;
        }
        Ve ve = VeDAO.createVeReposity().getVeByMaXCMaGhe(maXuatChieu, maGhe);
        ve.setMaTrangThaiVe(trangthai);
        int update = VeDAO.createVeReposity().update(ve);
        JSONObject json = new JSONObject();

        try {
            if (update > 0) {
                json.put("status", "true");
            } else {
                json.put("status", "false");
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        String output = json.toString();
        try {
            PrintWriter writer = response.getWriter();
            writer.write(output);
            writer.close();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }
}
