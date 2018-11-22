<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.nhom17.model.dto.Phim"%>
<%@ page contentType="text/html; charset=UTF-8"
	%>
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
		Phim movie = (Phim) request.getAttribute("movie");
		SimpleDateFormat ft = new SimpleDateFormat("MMMM dd, yyyy");
		String date = ft.format(movie.getNgayBatDau());
	%>
	<h2 class="page-heading"><%=movie.getTenPhim()%></h2>
	<div class="movie__info">
		<div class="col-sm-4 col-md-3 movie-mobile">
			<div class="movie__images">
				<span class="movie__rating"><%=movie.getImdbRank()%></span> <img alt=''
					src="<%=movie.getPosterURL()%>">
			</div>
			<!-- <div class="movie__rate">Your vote: <div id='score' class="score"></div></div> -->
		</div>
		<div class="col-sm-8 col-md-9">
			<p class="movie__time"><%=movie.getThoiLuongPhim()%></p>

			<p class="movie__option">
				<strong>Country: </strong><a href="#"><%=movie.getQuocGia()%></a>
			</p>

			<p class="movie__option">
				<strong>Year: </strong><a href="#"><%=date.substring(date.length() - 5, date.length())%></a>
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
				<strong>Category: </strong><a><%=genre%></a>
			</p>
			<p class="movie__option">
				<strong>Release date: </strong>
				<!-- November 1, 2013 --><%=date%>
			</p>
			<p class="movie__option">
				<strong>Director: </strong><a><%=movie.getDaodien()%></a>
			</p>
			<p class="movie__option">
				<strong>Actors: </strong><a><%=movie.getDienVien()%></a>
			</p>
			<p class="movie__option">
				<strong>Age restriction: </strong><a href="#"><%=movie.getNhanPhim()%></a>
			</p>
			<%--<div class="movie__btns movie__btns--full">--%>
				<%--<%--%>
					<%--if (movie.isNowShowingFlag()) {--%>
				<%--%>--%>
				<%--<a href="#moveHere" class="btn btn-md btn--warning">book a ticket for--%>
					<%--this movie</a>--%>
				<%--<%--%>
					<%--} else {--%>
				<%--%>--%>
				<%--<a href="#" class="btn btn-md btn--warning disabled">Coming Soon</a>--%>
				<%--<%--%>
					<%--}--%>
				<%--%>--%>
				<%--<a href="javascript:void(0);" class="watchlist"--%>
					<%--onclick="showTrailer('<%=movie.getTrailer()%>')">Watch Trailer</a>--%>
			<%--</div>--%>
			<!-- <div class="share">
										<span class="share__marker">Share: </span>
										<div class="addthis_toolbox addthis_default_style ">
											<a class="addthis_button_facebook_like"
												fb:like:layout="button_count"></a> <a
												class="addthis_button_tweet"></a> <a
												class="addthis_button_google_plusone"
												g:plusone:size="medium"></a>
										</div>
									</div> -->
		</div>
	</div>
</body>
</html>