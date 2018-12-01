package com.nhom17.controllers;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.TimerTask;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nhom17.model.dto.*;
import com.nhom17.model.reposity.impl.VeDAO;
import com.nhom17.model.services.internal.database_interaction.DatabaseInteractionServiceFactory;
import com.nhom17.model.services.internal.database_interaction.interfaces.BookingTicketService;
import com.nhom17.util.CustomTimer;


public class BookingTicketStepController extends BaseServlet {
	private static final long serialVersionUID = 1L;
	private RequestDispatcher requestDispatcher = null;
	private BookingTicketService bookingTicketService = null;

	{
		bookingTicketService = (BookingTicketService) new DatabaseInteractionServiceFactory()
				.getService(DatabaseInteractionServiceFactory.SERVICE_BOOKING_TICKET);
		bookingTicketService.openService();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = ((HttpServletRequest) request).getRequestURI();
		switch (url) {
		case "/booking_step1":
			respondWithBookinStep1View(request, response);
			break;
		case "/booking_step2":
			respondWithBookingStep2View(request, response);
			break;
		case "/booking_step3":
			respondWithBookinStep3View(request, response);
			break;
		default:
			break;
		}
	}

	private void respondWithBookinStep3View(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		if (session != null) {
			CustomTimer timer = (CustomTimer) session.getAttribute("Timer");
			System.out.println(String.format("Timer delay: %d", timer.getTimeRemaining()));
			PurchaseTicket purchaseTicket = (PurchaseTicket) session.getAttribute("purchaseTicket");
			purchaseTicket.setSeats((String) session.getAttribute("selectedSeats"));
			request.setAttribute("noOfTickets", purchaseTicket.getNo_of_tickets());
			request.setAttribute("ticketPrice", purchaseTicket.getEachTicketPrice());
			session.setAttribute("bookingStep", String.valueOf(3));
			session.setAttribute("purchaseTicket", purchaseTicket);
			requestDispatcher = request.getRequestDispatcher("booking_step3_page");
			requestDispatcher.forward(request, response);
		} else {

		}
	}

	private void respondWithBookingStep2View(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		HttpSession session = request.getSession();
		String movieID = (String) request.getAttribute("movieID");
		String date = (String) request.getAttribute("showDate");
		final String showTimeID = (String) request.getAttribute("showTimeID");

		CustomTimer timer = new CustomTimer("Booking", 3 * 60 * 1000, new TimerTask() {
			@Override
			public void run() {
				System.out.println("Expired!");
				resetSession(showTimeID);
			}
		});

		System.out.println("Set up timer");
		session.setAttribute("Timer", timer);

		PurchaseTicket purchaseTicket = new PurchaseTicket();
		purchaseTicket.setHallNo(4);
		purchaseTicket.setMovie(movieID);
		purchaseTicket.setShowDate(date);
		purchaseTicket.setShowTime("20:10");
		purchaseTicket.setMovieFormat(2);
		purchaseTicket.setEachTicketPrice(60);
		session.setAttribute("purchaseTicket", purchaseTicket);
		session.setAttribute("bookingStep", String.valueOf(2));
		session.setAttribute("bookingStep2Url", request.getAttribute("bookingStep2Url"));
		XuatChieu showTime = bookingTicketService.getMaXuatChieu(showTimeID);
		Phong phong = bookingTicketService.getPhong(showTime.getMaPhong());
		Map<String, Integer> seatPriceMap = Gia.giaVe.get(showTime.getMaDangPhim());
//		System.out.println("Booked Seats" + seatPriceMap);
		request.setAttribute("cinemaHall", phong);
		request.setAttribute("showTime", showTime);
		request.setAttribute("bookedSeatList", seatPriceMap);
		request.setAttribute("validEntry", true);
		requestDispatcher = request.getRequestDispatcher("booking_step2_page");
		requestDispatcher.forward(request, response);
	}

	private void respondWithBookinStep1View(HttpServletRequest request, HttpServletResponse response) {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = request.getRequestURI();
		switch (url) {
		case "/submit_selected_seats":
			String selectedSeats = (String) request.getAttribute("selectedSeats");
			double ticketPrice = (double) request.getAttribute("ticketPrice");
			HttpSession httpSession = request.getSession(false);
			if (httpSession == null) {
				response.getWriter().write("error");
			} else {
				PurchaseTicket purchaseTicket = (PurchaseTicket) httpSession.getAttribute("purchaseTicket");
				purchaseTicket.setEachTicketPrice(ticketPrice);
				httpSession.setAttribute("selectedSeats", selectedSeats);
				httpSession.setAttribute("purchaseTicket", purchaseTicket);
				response.getWriter().write("success");
			}
			break;
		default:
			break;
		}
	}
	
	@Override
	public void destroy() {
		bookingTicketService.closeService();
		super.destroy();
	}

	public void resetSession(String showtimeID) {
		VeDAO veDAO = VeDAO.createVeReposity();
		List<Ve> veList = veDAO.getByShowTimeID(showtimeID);
		List<Ve> veChanges = new ArrayList<>();
		for (Ve ve: veList) {
			if (ve.getMaTrangThaiVe() > 0) {
				ve.setMaTrangThaiVe(0);
				veChanges.add(ve);
			}
		}
		veDAO.update(veChanges);
	}

}
