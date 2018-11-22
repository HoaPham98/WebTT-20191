<%@page import="java.util.Iterator"%>
<%@page import="com.nhom17.model.dto.Phim"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	<%
		List<Phim> upComingMovieList = (ArrayList) request.getAttribute("Up_Coming_Movie_List");
		if (upComingMovieList != null && !upComingMovieList.isEmpty()) {
	%>
	<aside class="col-sm-4 col-md-3">
		<div class="sitebar">
			<div
				class="category category--cooming category--count marginb-sm mobile-category rs-cat">
				<h3 class="category__title">
					coming soon<br> <span class="title-edition">movies</span>
				</h3>
				<ol>
					<%
						Iterator<Phim> iterator = upComingMovieList.iterator();
							while (iterator.hasNext()) {
								Phim movie = iterator.next();
								String encodedMovieName = movie.getMaPhim().replace(" ", "^");
								String url = request.getContextPath() + "/movie?id=" + encodedMovieName;
					%>
					<li><a href="<%=url%>" class="category__item"><%=movie.getTenPhim()%></a></li>
					<%
						}
					%>
				</ol>
			</div>
		</div>
	</aside>
	<%
		}
	%>
</body>
</html>