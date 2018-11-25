package com.nhom17.controllers.filters;

import com.nhom17.model.dto.PurchaseTicket;
import com.nhom17.model.reposity.impl.XuatChieuDao;
import com.nhom17.model.services.internal.database_interaction.DatabaseInteractionServiceFactory;
import com.nhom17.model.services.internal.database_interaction.interfaces.BookingTicketService;
import com.nhom17.model.services.internal.database_interaction.interfaces.MovieScheduleService;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Enumeration;
import java.util.regex.Pattern;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class BookingTicketRequestFilter implements Filter {
	private BookingTicketService bookingTicketService = null;
	private MovieScheduleService movieScheduleService = null;

	public void destroy() {
		bookingTicketService.closeService();
		movieScheduleService.closeService();
	}

	{
		DatabaseInteractionServiceFactory databaseInteractionServiceFactory = new DatabaseInteractionServiceFactory();
		bookingTicketService = (BookingTicketService) databaseInteractionServiceFactory
				.getService(DatabaseInteractionServiceFactory.SERVICE_BOOKING_TICKET);
		bookingTicketService.openService();
		movieScheduleService = (MovieScheduleService) databaseInteractionServiceFactory
				.getService(DatabaseInteractionServiceFactory.SERVICE_MOVIE_SCHEDULE);
		movieScheduleService.openService();
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		String url = ((HttpServletRequest) request).getRequestURI();
		switch (url) {
		case "/booking_step1":
			filterBookinStep1(request, response, chain);
			break;
		case "/booking_step2":
			try {
				filterBookinStep2((HttpServletRequest) request, (HttpServletResponse) response, chain);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			break;
		case "/booking_step3":
			filterBookingStep3((HttpServletRequest) request, (HttpServletResponse) response, chain);
			break;
		case "/submit_selected_seats":
			System.out.print("submitted");
			String selectedSeats = request.getParameter("selected_seats");
			String ticketPrice = request.getParameter("ticket_price");
			if ((selectedSeats == null || selectedSeats == "") && (ticketPrice == null || ticketPrice == "")
					&& ((HttpServletRequest) request).getSession(false) == null) {
				response.getWriter().write("error");
				return;
			} else {
				request.setAttribute("selectedSeats", selectedSeats);
				request.setAttribute("ticketPrice", Double.parseDouble(ticketPrice));
				chain.doFilter(request, response);
			}
		default:
			break;
		}
	}

	private void filterBookinStep2(HttpServletRequest request, HttpServletResponse response, FilterChain chain)
			throws IOException, ServletException, ParseException {
		Enumeration<String> parameters = request.getParameterNames();
		if (parameters != null && parameters.hasMoreElements()) {
			int i = 1;
			boolean errorFlag = true;
			while (parameters.hasMoreElements()) {
				String parameter = parameters.nextElement();
				if (i <= 4) {
					if (i == 1 && parameter.equals("movie_id") && request.getParameter(parameter) != null) {
						errorFlag = false;
						System.out.println("1");
						// is_movie_playin check() here
					} else if (i == 2 && parameter.equals("date") && request.getParameter(parameter) != null
							&& request.getParameter(parameter).matches("\\d{2}/\\d{2}/\\d{4}")) {
						errorFlag = false;
						System.out.println("2");
					} else if (i == 3 && parameter.equals("time") && request.getParameter(parameter) != null) {
						errorFlag = false;
						System.out.println("3");
					} else if (i == 4 && parameter.equals("showtime")) {
						errorFlag = false;
						System.out.println("4");
					}
					if (errorFlag) {
						System.out.println("error param pattrn problem");
						response.setStatus(HttpServletResponse.SC_MOVED_TEMPORARILY);
						response.sendError(404);
						return;
					} else {
						errorFlag = true;
						i++;
					}

				} else {
					System.out.println("error extra param");
					response.setStatus(HttpServletResponse.SC_MOVED_TEMPORARILY);
					response.sendError(404);
					return;
				}
			}

			String booking_step_2_url = request.getRequestURI() + "?" + "movie_id="
					+ request.getParameter("movie_id") + "&" + "date=" + request.getParameter("date") + "&" + "time="
					+ request.getParameter("time");

			String movieId = request.getParameter("movie_id").replace("^", " ");
			String date = (new SimpleDateFormat("dd-MMM-yy")
					.format(new SimpleDateFormat("MM/dd/yyyy").parse(request.getParameter("date")))).toUpperCase();
			String time = request.getParameter("time");
			Date showTime = new SimpleDateFormat("dd-MMM-yy hh:mm").parse(date + " " + time);
			String showTimeID = request.getParameter("showtime");
			System.out.println(movieId);
			System.out.println(date);
			System.out.println(time);
			System.out.println(showTime);
			if (showTime.compareTo(new Date()) >= 1) {
				request.setAttribute("movieID", movieId);
				request.setAttribute("showDate", date);
				request.setAttribute("showTimeID", showTimeID);
				request.setAttribute("bookingStep2Url", booking_step_2_url);
				chain.doFilter(request, response);
			} else {
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

	private void filterBookinStep1(ServletRequest request, ServletResponse response, FilterChain chain) {

	}

	private void filterBookingStep3(HttpServletRequest request, HttpServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpSession session = request.getSession(false);
		String selectedSeats = (String) session.getAttribute("selectedSeats");
		String currentStep = (String) session.getAttribute("bookingStep");
		PurchaseTicket purchaseTicket = (PurchaseTicket) session.getAttribute("purchaseTicket");
		if (session != null && (selectedSeats != null && !selectedSeats.equals(""))
				&& (currentStep.equals("2") || currentStep.equals("3")) && purchaseTicket != null) {
			if (bookingTicketService.areSeatsAvailable(purchaseTicket.getShowDate(), purchaseTicket.getShowTime(),
					purchaseTicket.getHallNo(), selectedSeats)) {
				chain.doFilter(request, response);
			} else {
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

	public void init(FilterConfig fConfig) throws ServletException {
	}

}
