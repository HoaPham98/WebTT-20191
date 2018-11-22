package com.nhom17.controllers.filters;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletResponse;

public class MovieInfoRequestFilter implements Filter {

	public void destroy() {

	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		String maPhim = request.getParameter("id");
		String dateString = request.getParameter("date");
		System.out.println(maPhim);
		try {
			if (dateString != null && !dateString.isEmpty()) {
				Date date = new SimpleDateFormat("MM/dd/yyyy").parse(dateString);
				request.setAttribute("date", date);
			} else {
				request.setAttribute("date", new Date());
			}
			if (maPhim != null && !maPhim.contains(" ")) {

				request.setAttribute("maPhim", maPhim);
				chain.doFilter(request, response);
			} else {
				System.out.println("error");
				HttpServletResponse servletResponse = (HttpServletResponse) response;
				servletResponse.setStatus(HttpServletResponse.SC_MOVED_TEMPORARILY);
				servletResponse.sendError(404);
			}
		} catch (ParseException e) {
			e.printStackTrace();
			System.out.println("error");
			HttpServletResponse servletResponse = (HttpServletResponse) response;
			servletResponse.setStatus(HttpServletResponse.SC_MOVED_TEMPORARILY);
			servletResponse.sendError(404);
		}

	}

	public void init(FilterConfig fConfig) throws ServletException {

	}
}
