<%@page import="java.util.ArrayList"%>
<%@page import="com.nhom17.model.dto.Phim"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	<%
		List<Phim> upComingMovieList = (ArrayList<Phim>) request.getAttribute("Up_Coming_Movie_List");
		if (upComingMovieList != null && !upComingMovieList.isEmpty()) {
	%>
	<div class="more-reviews">

		<ul id="flexiselDemo2">
			<%
				for (Phim movie : upComingMovieList) {
					String encodedMovieName = movie.getMaPhim().replace(" ", "^");
					String url = request.getContextPath() + "/movie?id=" + encodedMovieName;
			%>
			<li><img
				src="<%= movie.getPosterURL() %>"
				onclick="sliderImageClick('<%=url%>')" /></li>

			<%
				}
			%>
			<%-- <li><img
				src="${pageContext.request.contextPath}/resources/images/movie_posters/m2.jpg" /></li>
			<li><img
				src="${pageContext.request.contextPath}/resources/images/movie_posters/m3.jpg" /></li>
			<li><img
				src="${pageContext.request.contextPath}/resources/images/movie_posters/m4.jpg" /></li> --%>
		</ul>
		<script type="text/javascript">
			$(window).load(function() {

				$("#flexiselDemo2").flexisel({
					visibleItems : 4,
					animationSpeed : 1000,
					autoPlay : true,
					autoPlaySpeed : 3000,
					pauseOnHover : false,
					enableResponsiveBreakpoints : true,
					responsiveBreakpoints : {
						portrait : {
							changePoint : 480,
							visibleItems : 2
						},
						landscape : {
							changePoint : 640,
							visibleItems : 3
						},
						tablet : {
							changePoint : 768,
							visibleItems : 3
						}
					}
				});
			});
		</script>
		<script type="text/javascript"
			src="${pageContext.request.contextPath}/resources/js/jquery.flexisel.js"></script>
	</div>
	<%
		}
	%>
</body>
</html>