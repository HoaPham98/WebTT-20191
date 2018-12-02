package com.nhom17.controllers.filters;

import com.nhom17.model.dto.GiaoDich;
import com.nhom17.model.dto.PurchaseTicket;
import com.nhom17.model.services.internal.database_interaction.DatabaseInteractionServiceFactory;
import com.nhom17.model.services.internal.database_interaction.interfaces.BookingTicketService;

import java.io.IOException;
import java.util.List;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebFilter("/PurchaseTicketRequestFilter")
public class PurchaseTicketRequestFilter implements Filter {
    private BookingTicketService bookingTicketService = null;

    public void destroy() {
        bookingTicketService.closeService();
    }

    {

        bookingTicketService = (BookingTicketService) new DatabaseInteractionServiceFactory()
                .getService(DatabaseInteractionServiceFactory.SERVICE_BOOKING_TICKET);
        bookingTicketService.openService();
    }

    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        HttpServletResponse httpServletResponse = (HttpServletResponse) response;
        HttpSession session = ((HttpServletRequest) request).getSession(false);
        GiaoDich giaoDich = (GiaoDich) session.getAttribute("giaoDich");
        String selectedSeats = (String) session.getAttribute("selectedSeats");
        if (((HttpServletRequest) request).getMethod().equals("POST") && session != null && giaoDich != null
                && session.getAttribute("bookingStep").equals("3")) {
            chain.doFilter(request, response);
            return;
        } else {
            System.out.println("error");
            httpServletResponse.setStatus(HttpServletResponse.SC_MOVED_TEMPORARILY);
            httpServletResponse.sendError(404);
            return;
        }
    }

    public void init(FilterConfig fConfig) throws ServletException {
    }

}
