package com.nhom17.controllers;

import com.nhom17.model.dto.ChiTietVe;
import com.nhom17.model.dto.Customer;
import com.nhom17.model.dto.GiaoDich;
import com.nhom17.model.dto.PurchaseTicket;
import com.nhom17.model.reposity.impl.GiaoDichDao;
import com.nhom17.model.services.internal.database_interaction.DatabaseInteractionServiceFactory;
import com.nhom17.model.services.internal.database_interaction.interfaces.BookingTicketService;

import java.io.IOException;
import java.sql.Time;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class PurchaseTicketControllerServlet extends BaseServlet {
    private static final long serialVersionUID = 1L;
    private BookingTicketService bookingTicketService;

    {
        bookingTicketService = (BookingTicketService) new DatabaseInteractionServiceFactory()
                .getService(DatabaseInteractionServiceFactory.SERVICE_BOOKING_TICKET);
        bookingTicketService.openService();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);
        if (session != null) {
//            PurchaseTicket purchaseTicket = (PurchaseTicket) session.getAttribute("purchaseTicket");
            GiaoDich giaoDich = (GiaoDich) session.getAttribute("giaoDich");
            String selectedSeats = (String) session.getAttribute("selectedSeats");
            ChiTietVe chiTietVe = ChiTietVe.getByXuatChieu(giaoDich.getMaXuatChieu());
            System.out.println("----Purchase Ticket--------");
            System.out.println(
                    "Hall No:" + chiTietVe.getPhongChieu() + ",Ticket Price:" + giaoDich.getTongTien()
                            + ",No. of Seats Reuest for booking:" + giaoDich.getListMaGhe().size());
            /*
             * System.out.println("Customer:" + customer.getCustomerName() +
             * ",Email:" + customer.getEmail() + "Phone:" +
             * customer.getPhone());
             */
            System.out.println("ShowDate:" + chiTietVe.getNgayChieu() + ",Time:" + chiTietVe.getGioChieu());
            System.out.println("Seat" + selectedSeats);
            System.out.println("Movie Format:" + chiTietVe.getDangPhim());
            /*
             * int ticketId = dbConnector.bookSeats(customer.toString(),
             * selectedSeats, purchaseTicket.getShowDate(),
             * purchaseTicket.getShowTime(), purchaseTicket.getHallNo(),
             * purchaseTicket.getMovie(), purchaseTicket.getMovieFormat());
             */
            int ticketId = 1;
            GiaoDich giaoDich1 = GiaoDichDao.createGiaoDichDao().getByID(giaoDich.getId());
            if (giaoDich1.getId() == giaoDich.getId()) {
                giaoDich.setMaGiaoDich(giaoDich1.getMaGiaoDich());
                giaoDich.setGioDat(LocalTime.now());
                giaoDich.setNgayDat(LocalDate.now());
                giaoDich.setIdTrangThaiGiaodich(2);
                GiaoDichDao.createGiaoDichDao().update(giaoDich);
                session.setAttribute("bookingStep", String.valueOf(4));
                session.setAttribute("giaoDich", giaoDich);
                session.setAttribute("chiTietVe", chiTietVe);
                System.out.println("Ticket is sucessfully purchased");
                String userTicket = request.getContextPath() + "/" + "final_ticket";
                response.sendRedirect(userTicket);
                return;
            } else {
                System.out.println("Sry, purchased isn't occured");
                System.out.println("error");
                response.setStatus(HttpServletResponse.SC_MOVED_TEMPORARILY);
                response.sendError(404);
                return;
            }
        } else {
            System.out.println("error");
            response.setStatus(HttpServletResponse.SC_MOVED_TEMPORARILY);
            response.sendError(404);
            return;
        }
    }

    @Override
    public void destroy() {
        bookingTicketService.closeService();
        super.destroy();
    }
}
