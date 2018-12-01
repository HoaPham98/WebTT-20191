<%@ page import="com.nhom17.model.dto.GiaoDich" %>
<%@ page import="com.nhom17.model.dto.ChiTietVe" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Final Ticket</title>
<jsp:include page="/WEB-INF/templates/web/include_header_resources.jsp" />
<jsp:include page="/WEB-INF/templates/web/include_header_resources2.jsp" />
</head>
<body>
	<%
		SimpleDateFormat sdf = new SimpleDateFormat("MMM dd,yyyy");
		GiaoDich giaoDich = null;
		ChiTietVe chiTietVe = null;
		String selectedSeats = null;
		HttpSession httpSession = request.getSession(false);
		if (httpSession == null) {

		} else {
			giaoDich = (GiaoDich) httpSession.getAttribute("giaoDich");
			selectedSeats = (String) httpSession.getAttribute("selectedSeats");
			chiTietVe = (ChiTietVe) httpSession.getAttribute("chiTietVe");
			if (!(httpSession.getAttribute("bookingStep") != null
					&& httpSession.getAttribute("bookingStep").equals("4") && giaoDich != null
					&& selectedSeats != null && !selectedSeats.isEmpty())) {

			}
		}
	%>
	<div class="full">
		<!--<jsp:include page="/WEB-INF/templates/web/menu.jsp"/>-->
		<div class="main">
			<div class="single-content">
				<jsp:include page="/WEB-INF/templates/web/header.jsp" />
				<div class="reviews-section">
					<!-- Main content -->
					<section class="container">
						<div class="order-container">
							<div class="order">
								<img class="order__images" alt=''
									src="${pageContext.request.contextPath}/resources/images/tickets.png">
								<p class="order__title">
									Thank you <br> <span class="order__descript">you
										have successfully purchased tickets</span>
								</p>
							</div>

							<div class="ticket">
								<div class="ticket-position">
									<div class="ticket__indecator indecator--pre">
										<div class="indecator-text pre--text">online ticket</div>
									</div>
									<div class="ticket__inner">

										<div class="ticket-secondary">
											<span class="ticket__item">Ticket number <strong
												class="ticket__number"><%=giaoDich.getMaGiaoDich()%></strong></span>
											<span class="ticket__item ticket__date"><%=giaoDich.getNgayDat().format(DateTimeFormatter.ofPattern("MMM dd, yyyy"))%></span>
											<span class="ticket__item ticket__time"><%=giaoDich.getGioDat().format(DateTimeFormatter.ofPattern("HH:mm"))%></span>
											<span class="ticket__item"><%=chiTietVe.getPhongChieu()%></span>
											<span class="ticket__item ticket__price">price: <strong
												class="ticket__cost"><%=giaoDich.getTongTien()%> VNĐ</strong></span>
										</div>

										<div class="ticket-primery">
											<span class="ticket__item ticket__item--primery ticket__film">Film<br>
												<strong class="ticket__movie"><%=chiTietVe.getTenPhim()%></strong></span>
											<span class="ticket__item ticket__item--primery">Sits:
												<span class="ticket__place"><%=selectedSeats%></span>
											</span>
										</div>


									</div>
									<div class="ticket__indecator indecator--post">
										<div class="indecator-text post--text">online ticket</div>
									</div>
								</div>
							</div>

							<div class="ticket-control">
								<a href="javascript:void(0);" class="watchlist list--download" onclick="downloadTicket()">Download</a> <a
									href="javascript:void(0);" class="watchlist list--print" onclick="printTicket()">Print</a>
							</div>

						</div>
					</section>
				</div>
			</div>
			<jsp:include page="/WEB-INF/templates/web/footer.jsp" />
		</div>
	</div>
	<div class="clearfix"></div>
	<jsp:include page="/WEB-INF/templates/web/include_body_resources.jsp" />
	<script type="text/javascript">
	$(document).ready(function() {
	
	});
	function downloadTicket(){
		window.print();
	};
	function printTicket(){
		window.print();
	};
	</script>
</body>
</html>