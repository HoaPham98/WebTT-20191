<%@page import="java.util.Calendar"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.LinkedHashMap"%>
<%@page import="java.util.Map"%>
<%@page import="com.nhom17.model.dto.XuatChieu"%>
<%@page import="java.util.List"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<%!Date getZeroTimeDate(Date fecha, boolean flag) {
	Date res = fecha;
	Calendar calendar = Calendar.getInstance();
	calendar.setTime(fecha);
	if (flag) {
		calendar.set(Calendar.HOUR_OF_DAY, 0);
		calendar.set(Calendar.MINUTE, 0);
		calendar.set(Calendar.SECOND, 0);
		calendar.set(Calendar.MILLISECOND, 0);
		res = calendar.getTime();
	} else {
		calendar.set(Calendar.DATE, 0);
		calendar.set(Calendar.MONTH, 0);
		calendar.set(Calendar.YEAR, 0);
		calendar.set(Calendar.SECOND, 0);
		calendar.set(Calendar.MILLISECOND, 0);
	}
	return res;
}%>

<%
	String format = (String) request.getAttribute("format");
	List<XuatChieu> showTimeSchedule = (ArrayList<XuatChieu>) request.getAttribute("schedule");
	Date todayDate = new Date();
	Date showDate = (Date) request.getAttribute("showdate");
	String datePickerDate = new SimpleDateFormat("MM/dd/yyyy").format(showDate);
	String id = (String) request.getAttribute("maPhim");
	String bookingURL = request.getContextPath() + "/" + "booking_step2?" + "movie_id=" + id
			+ "&" + "date=" + datePickerDate;
	int isToday = 0;
	if (showDate.compareTo(getZeroTimeDate((Date) todayDate.clone(), true)) > 1) {
		isToday = 1;
	} else if (showDate.compareTo(getZeroTimeDate((Date) todayDate.clone(), true)) < 0) {
		isToday = -1;
	}
%>
<body>
<h2 class="page-heading">
	showtime &amp; tickets (<%=format%>)
</h2>
<div class="choose-container">

	<div class="datepicker">
		<span class="datepicker__marker"><i class="fa fa-calendar"></i>Date</span>
		<input type="text" id="datepicker" value='<%=datePickerDate%>'
			   class="datepicker__input">
	</div>

	<div class="clearfix"></div>
	<%!int getCategory(int hallNo) {
		int category = 1;
		return category;
	}%>

	<div class="time-select">
		<div class="time-select__group">
			<ul class="col-sm-8 items-wrap">
				<%
					for (XuatChieu showTime : showTimeSchedule) {
						System.out.println(showTime.getThoiGianChieu());
						String clsName = "";
						String showURL = null;
						switch (isToday) {
							case -1:
								System.out.print(-1);
								clsName = "disabled";
								break;
							case 1:
								clsName = "";
								showURL = bookingURL + "&time=" + showTime.getMaXuatChieu().replaceAll(" ", "_");
								break;
							default:

								break;
						}
				%>
				<li class="time-select__item <%=clsName%>"
					data-time='showTime.getTime().substring(0, 5)'
					onclick="bookSeat('<%=showURL%>')"><%=showTime.getThoiGianChieu().substring(0, 5)%></li>
				<%
					}
				%>
			</ul>
		</div>


		<!-- <div class="time-select__group">
                <div class="col-sm-4">
                    <p class="time-select__place">Curzon</p>
                </div>
                <ul class="col-sm-8 items-wrap">
                    <li class="time-select__item" data-time='09:00'>09:00</li>
                    <li class="time-select__item" data-time='11:00'>11:00</li>
                    <li class="time-select__item" data-time='13:00'>13:00</li>
                    <li class="time-select__item" data-time='15:00'>15:00</li>
                    <li class="time-select__item" data-time='17:00'>17:00</li>
                    <li class="time-select__item" data-time='19:0'>19:00</li>
                    <li class="time-select__item" data-time='21:0'>21:00</li>
                    <li class="time-select__item" data-time='23:0'>23:00</li>
                    <li class="time-select__item" data-time='01:0'>01:00</li>
                </ul>
            </div>
            <div class="time-select__group">
                <div class="col-sm-4">
                    <p class="time-select__place">Odeon</p>
                </div>
                <ul class="col-sm-8 items-wrap">
                    <li class="time-select__item" data-time='10:45'>10:45</li>
                    <li class="time-select__item" data-time='16:00'>16:00</li>
                    <li class="time-select__item" data-time='19:00'>19:00</li>
                    <li class="time-select__item" data-time='21:15'>21:15</li>
                    <li class="time-select__item" data-time='23:00'>23:00</li>
                </ul>
            </div> -->
	</div>
</div>
</body>
</html>