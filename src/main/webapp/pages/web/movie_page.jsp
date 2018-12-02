<%@page import="com.nhom17.model.dto.XuatChieu"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.nhom17.model.dto.Phim"%>
<%@ page import="com.nhom17.model.dto.MovieShowTimeSchedule" %>
<%@ page import="com.nhom17.model.dto.DangPhim" %>
<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Movie</title>
<jsp:include page="/WEB-INF/templates/web/include_header_resources.jsp" />
<jsp:include page="/WEB-INF/templates/web/include_header_resources2.jsp" />
</head>
<body>
	<div class="full">
		<jsp:include page="/WEB-INF/templates/web/menu.jsp"/>
		<div class="main">
			<div class="single-content">
				<jsp:include page="/WEB-INF/templates/web/header.jsp" />
				<div class="reviews-section"></div>
				<!-- Main content -->
				<section class="container">
					<div class="col-sm-12">
						<div class="movie" style="margin-top: -50px;">
							<%
								MovieShowTimeSchedule movieShowTimeSchedule = (MovieShowTimeSchedule) request.getAttribute("movie_info");
								request.setAttribute("movie", movieShowTimeSchedule.getMovie());
								Phim phim = movieShowTimeSchedule.getMovie();
								Date showDate = movieShowTimeSchedule.getShowDate();
								System.out.print(showDate);
								String id = phim.getMaPhim();
								String url = request.getContextPath() + "/movie?" + "id=" + id + "&date=";
							%>
							<jsp:include page="/WEB-INF/templates/web/movie_info.jsp" />
							<div class="clearfix"></div>
							<h2 class="page-heading" style="margin-top: 20px;">The plot</h2>

							<p class="movie__describe"><%=phim.getMotaPhim()%></p>
						</div>
						<div id="moveHere"></div>
						<%
							request.setAttribute("maPhim", id);
							request.setAttribute("showdate", showDate);
						%>
						<%
							Map<DangPhim,List<XuatChieu>> map = movieShowTimeSchedule.getShowTimes();
							int i = 0;
							for (Map.Entry<DangPhim, List<XuatChieu>> entry : map.entrySet())
							{
								List<XuatChieu> list = entry.getValue();
								if (!list.isEmpty()) {
									i++;
									request.setAttribute("format", entry.getKey().getTenDangPhim());
									request.setAttribute("schedule", list);
						%>
						<jsp:include page="/WEB-INF/templates/web/movie_time_schedule.jsp" />
						<%
								}
							}
						%>
						<%--<%--%>
							<%--if (movieShowTimeSchedule.getMovie().isNowShowingFlag() && showTime3d == null && showTime2d == null) {--%>
								<%--String datePickerDate = new SimpleDateFormat("MM/dd/yyyy").format(showDate);--%>
						<%--%>--%>
						<h2 class="page-heading">showtime &amp; tickets</h2>
						<%--<div class="choose-container">--%>

							<%--<div class="datepicker">--%>
								<%--<span class="datepicker__marker"><i--%>
									<%--class="fa fa-calendar"></i>Date</span> <input type="text"--%>
									<%--id="datepicker" value='<%=datePickerDate%>'--%>
									<%--class="datepicker__input">--%>

							<%--</div>--%>
						<%--</div>--%>
						<%--<%--%>
							<%--}--%>
						<%--%>--%>
					</div>
				</section>
			</div>
			<jsp:include page="/WEB-INF/templates/web/footer.jsp" />
		</div>
	</div>
	<div class="clearfix"></div>
	<jsp:include page="/WEB-INF/templates/web/include_body_resources.jsp" />
	<script
		src="${pageContext.request.contextPath }/resources/js/jquery.showYtVideo.js"></script>
	<script type="text/javascript">
		$(document)
				.ready(
						function($) {
							init_MovieList();
							var rootURL = location.origin;
							$("#datepicker")
									.change(
											function() {
												var pickedDate = $(this).val();
												window.location.href = '<%=url%>' + pickedDate;
			});
		});
		function showTrailer(trailer) {
			jQuery.showYtVideo({
				videoId : trailer
			});
		};
		function bookSeat(url) {
			console.log(url);
			if (url != 'null') {
				window.location.href = url;
			}
		};
	</script>
</body>
</html>