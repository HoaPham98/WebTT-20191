package com.nhom17.controllers;

import com.nhom17.model.dto.MovieShowTimeSchedule;
import com.nhom17.model.dto.Phim;
import com.nhom17.model.dto.XuatChieu;
import com.nhom17.model.services.internal.database_interaction.DatabaseInteractionServiceFactory;
import com.nhom17.model.services.internal.database_interaction.interfaces.MovieInfoService;
import com.nhom17.model.services.internal.database_interaction.interfaces.MovieScheduleService;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class MovieInfoControllerServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	private RequestDispatcher requestDispatcher = null;
	MovieInfoService movieInfoService = null;
	private MovieShowTimeSchedule movieShowTimeSchedule;

	{
		movieInfoService = (MovieInfoService) new DatabaseInteractionServiceFactory()
				.getService(DatabaseInteractionServiceFactory.SERVICE_MOVIE_INFO);
		movieInfoService.openService();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession httpSession = request.getSession(false);
		if (httpSession != null) {
			httpSession.invalidate();
		}
		MovieInfoService movieInfoService = (MovieInfoService) new DatabaseInteractionServiceFactory()
				.getService(DatabaseInteractionServiceFactory.SERVICE_MOVIE_INFO);
//		String maPhjmovieName = (String) request.getAttribute("movieName");
		String maPhim = (String) request.getAttribute("maPhim");

//		Movie movie = movieInfoService.getMovieInfo(movieName, nowShowingFlag);
		Phim phim = movieInfoService.getMovieInfo(maPhim);
		try {
			respondWithMovieInfoPageView(phim, request, response);
		} catch (ParseException e) {
			e.printStackTrace();
		}

	}

	private void respondWithMovieInfoPageView(Phim phim, HttpServletRequest request, HttpServletResponse response)
			throws ParseException, NullPointerException {
		ArrayList<XuatChieu> xuatChieus = new ArrayList<>();
		if (phim != null) {
			MovieScheduleService movieScheduleService = (MovieScheduleService) new DatabaseInteractionServiceFactory()
					.getService(DatabaseInteractionServiceFactory.SERVICE_MOVIE_SCHEDULE);
			Date showDate = (Date) request.getAttribute("date");
			movieShowTimeSchedule = movieScheduleService.getMovieSchedule(phim, showDate);
			movieShowTimeSchedule.setShowDate(showDate);
			System.out.println(showDate);
			movieShowTimeSchedule.setMovie(phim);
		} else {
			NullPointerException exception = new NullPointerException();
			throw exception;
		}
		request.setAttribute("movie_info", movieShowTimeSchedule);
		request.setAttribute("validEntry", true);
		requestDispatcher = request.getRequestDispatcher("movie_page");
		try {
			requestDispatcher.forward(request, response);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void destroy() {
		movieInfoService.closeService();
		super.destroy();
	}
}
