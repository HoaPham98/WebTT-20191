<%@page import="java.util.List"%>
<%@page import="com.nhom17.model.dto.XuatChieu"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="java.util.Locale"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.nhom17.model.dto.Phim"%>
<%@ page import="com.nhom17.model.dto.MovieShowTimeSchedule" %>
<%@ page import="com.nhom17.model.dto.DangPhim" %>
<%@ page import="java.util.Map" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link
	href="${pageContext.request.contextPath}/resources/css/showYtVideo.css"
	rel="stylesheet" />
</head>
<body>
<%
	MovieShowTimeSchedule movieShowTimeSchedule = (MovieShowTimeSchedule) request.getAttribute("movie");
	Phim phim = movieShowTimeSchedule.getMovie();
	String url = request.getContextPath() + "/movie?id=" + phim.getMaPhim();
%>
	<!-- Movie preview item -->
	<div class="movie movie--preview release">
		<div class="col-sm-5 col-md-3">
			<div class="movie__images">
				<img alt=''
					src="<%= phim.getPosterURL()%>">
			</div>
			<!-- <div class="movie__feature">
				<a href="#" class="movie__feature-item movie__feature--comment">123</a>
				<a href="#" class="movie__feature-item movie__feature--video">7</a>
				<a href="#" class="movie__feature-item movie__feature--photo">352</a>
			</div> -->
		</div>
		<div class="col-sm-7 col-md-9">
			<a href='<%=url%>' class="movie__title link--huge"><%=phim.getTenPhim()%></a>

			<p class="movie__time"><%=phim.getThoiLuongPhim()%>
				min
			</p>

			<p class="movie__option">
				<strong>Country: </strong><a href="#">USA</a>
			</p>
			<p class="movie__option">
				<%
					/* 
					1- > Action
					2-> Comedy
					3-> Animation
					4-> Action
					5-> Drama
					6-> Romantic
					7-> Adventure
					8-> Sports
					9-> War */
					String genre = null;
					switch (1) {
					case 1:
						genre = "Action";
						break;
					case 2:
						genre = "Comedy";
						break;
					case 3:
						genre = "Animation";
						break;
					case 4:
						genre = "Action";
						break;
					case 5:
						genre = "Drama";
						break;
					case 6:
						genre = "Romantic";
						break;
					case 7:
						genre = "Adventure";
						break;
					case 8:
						genre = "Sports";
						break;
					case 9:
						genre = "War";
						break;
					default:
						genre = "Horror";
						break;
					}
				%>
				<strong>Category: </strong><a href="#"><%=genre%></a>
			</p>
			<p class="movie__option">
				<strong>Release date: </strong>
				<%
					SimpleDateFormat ft = new SimpleDateFormat("MMMM dd, yyyy");
					String date = ft.format(phim.getNgayBatDau());
				%>
				<!-- November 1, 2013 --><%=date%>
			</p>
			<p class="movie__option">
				<strong>Director: </strong><a><%=phim.getDaodien()%></a>
			</p>
			<p class="movie__option">
				<strong>Actors: </strong><a><%=phim.getDienVien()%></a>
			</p>
			<p class="movie__option">
				<strong>Maturity: </strong><a><%=phim.getNhanPhim()%></a>
			</p>

			<div class="movie__btns">
				<%-- <%
					if (movie.isNowShowingFlag()) {
				%>
				<a href="#" class="btn btn-md btn--warning">book a ticket for
					this movie</a>
				<%
					} else {
				%>
				<a href="#" class="btn btn-md btn--warning disabled">Coming Soon</a>
				<%
					}
				%> --%>
				<%--<a href="javascript:void(0);" class="watchlist"--%>
					<%--onclick="showTrailer('<%=movie.()%>')">Watch Trailer</a>--%>
			</div>
			<div class="preview-footer">
				<div class="movie__rate" style="padding-bottom: 50px;">
					<!-- <div class="score"></div>
					<span class="movie__rate-number">170 votes</span> -->
					<span class="movie__rating">5.0</span>
				</div>
				<%
					Map<DangPhim,List<XuatChieu>> map = movieShowTimeSchedule.getShowTimes();
					int i = 0;
					for (Map.Entry<DangPhim, List<XuatChieu>> entry : map.entrySet())
					{
					    List<XuatChieu> list = entry.getValue();
						if (!list.isEmpty()) {
						    i++;
				%>
					<a href="#" class="movie__show-btn movie__show-btn<%=i%>"><%=entry.getKey().getTenDangPhim()%></a>
				<%
						}
					}
				%>
			</div>
		</div>
		<div class="clearfix"></div>
		<jsp:include page="/WEB-INF/templates/web/movie_time.jsp" />
	</div>
</body>
</html>