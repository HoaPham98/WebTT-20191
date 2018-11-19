<%@page import="java.util.ArrayList"%>
<%@page import="com.nhom17.model.dto.Phim"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
	<div class="review-slider">
		<ul id="flexiselDemo1">
			<%
				List<Phim> nowShowingMovieList = (ArrayList<Phim>) request.getAttribute("Now_Showing_Movie_List");

				for (Phim movie : nowShowingMovieList) {
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
				src="${pageContext.request.contextPath}/resources/images/movie_posters/r2.jpg"
				alt="" /></li>
			<li><img
				src="${pageContext.request.contextPath}/resources/images/movie_posters/r3.jpg"
				alt="" /></li>
			<li><img
				src="${pageContext.request.contextPath}/resources/images/movie_posters/r4.jpg"
				alt="" /></li>
			<li><img
				src="${pageContext.request.contextPath}/resources/images/movie_posters/r5.jpg"
				alt="" /></li>
			<li><img
				src="${pageContext.request.contextPath}/resources/images/movie_posters/r6.jpg"
				alt="" /></li> --%>
		</ul>
		<script type="text/javascript">
			$(window).load(function() {

				$("#flexiselDemo1").flexisel({
					visibleItems : 6,
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
							visibleItems : 4
						}
					}
				});
				/* function myFunction(){
					alert("sds");
				} */
			});
		</script>
		<script type="text/javascript"
			src="${pageContext.request.contextPath}/resources/js/jquery.flexisel.js"></script>
	</div>
</body>
</html>