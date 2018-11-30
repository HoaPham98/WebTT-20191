<%@page import="java.util.Set" %>
<%@page import="java.util.LinkedHashMap" %>
<%@page import="java.util.Map" %>
<%@page import="java.util.List" %>
<%@ page import="com.nhom17.model.dto.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Booking Step 2</title>
    <jsp:include page="/WEB-INF/templates/web/include_header_resources.jsp"/>
    <jsp:include page="/WEB-INF/templates/web/include_header_resources2.jsp"/>
</head>
<body>
<%
    Phong cinemaHall = (Phong) request.getAttribute("cinemaHall");
    XuatChieu showtime = (XuatChieu) request.getAttribute("showTime");
    List<HangGhe> seatList = cinemaHall.getHangGheList();
    Map<String, Integer> bookedSeatList = (Map<String, Integer>) request.getAttribute("bookedSeatList");
    int k = 0;
    String[] bookedSeats = null;
    boolean reservedSeatsFlag = false;
    if (bookedSeatList != null && !bookedSeatList.isEmpty()) {
        System.out.println(bookedSeatList.size());
        Set<String> keys = bookedSeatList.keySet();
        System.out.print(keys);
        bookedSeats = keys.toArray(new String[keys.size()]);
        System.out.print(bookedSeats.length);
        reservedSeatsFlag = true;
    }
%>
<div class="full">
    <jsp:include page="/WEB-INF/templates/web/menu.jsp"/>
    <div class="main">
        <div class="single-content">
            <jsp:include page="/WEB-INF/templates/web/header.jsp"/>
            <div class="reviews-section">
                <!-- Main content -->
                <section class="container">
                    <div id="modal" class="modal fade">
                        <!-- <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"
                    aria-hidden="true">×</button>
                <h4 class="modal-title">Modal title</h4>
            </div>
            <div class="modal-body">
                <p>One fine body…</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div>
        /.modal-content
    </div>
    /.modal-dialog -->
                    </div>
                    <div class="order-container">
                        <div class="order">
                            <img class="order__images" alt=''
                                 src="${pageContext.request.contextPath}/resources/images/tickets.png"/>
                            <p class="order__title">
                                Book a ticket <br> <span class="order__descript">and
										have fun movie time</span>
                            </p>
                            <div class="order__control">
                                <a href="#" class="order__control-btn active">Purchase</a>
                            </div>
                        </div>
                    </div>
                    <div class="order-step-area">
                        <div class="order-step first--step order-step--disable ">1.
                            What &amp; Where &amp; When
                        </div>
                        <div class="order-step second--step">2. Choose a sit</div>
                    </div>

                    <div class="choose-sits">
                        <div class="choose-sits__info choose-sits__info--first">
                            <ul>
                                <li class="sits-price marker--none"><strong>Seat
                                    Price</strong></li>
                                <li class="sits-price sits-price--cheap">Thường (<%=bookedSeatList.get("NORMAL")%> VNĐ)</li>
                                <li class="sits-price sits-price--middle">Vip (<%=bookedSeatList.get("VIP")%> VNĐ)</li>
                                <li class="sits-price sits-price--expensive">SweetBox (<%=bookedSeatList.get("SWEETBOX")%> VNĐ)</li>
                            </ul>
                        </div>

                        <div class="choose-sits__info">
                            <ul>
                                <li class="sits-state sits-state--not">Not available</li>
                                <li class="sits-state sits-state--your">Your choice</li>
                            </ul>
                        </div>

                        <div class="col-sm-12 col-lg-10 col-lg-offset-1">
                            <div class="sits-area hidden-xs">
                                <div class="sits-anchor">screen</div>

                                <div class="sits">
                                    <aside class="sits__line">
                                        <%
                                            for (HangGhe cinemaHallSeat : seatList) {
                                                if (!cinemaHallSeat.isGheDoi()) {
                                        %>
                                        <span class="sits__indecator"><%=cinemaHallSeat.getHang()%></span>

                                        <%
                                        } else {
                                        %>
                                        <span class="sits__indecator additional-margin"><%=cinemaHallSeat.getHang()%></span>
                                        <%
                                                }
                                            }
                                        %>
                                    </aside>
                                    <%
                                        int j = 0;
                                        for (HangGhe cinemaHallSeat : seatList) {
                                    %>
                                    <div <%if (!cinemaHallSeat.isGheDoi()) {%>
                                            class="sits__row" <%} else {%>
                                            class="sits__row additional-margin" <%}%>>
                                        <%
                                            System.out.println(String.format("Hang: %s, so ghe: %d",cinemaHallSeat.getHang(), cinemaHallSeat.getGheList().size()));
                                            for (Ghe ghe: cinemaHallSeat.getGheList()) {
                                        %>
                                        <span
                                                <%
                                                    String className = null;
                                                    int price = 0;
                                                    if (ghe.getIdGhe().startsWith("N")) {
                                                        className = "sits__place sits-price--cheap";
                                                        price = bookedSeatList.get("NORMAL");
                                                    } else if (ghe.getIdGhe().startsWith("V")) {
                                                        className = "sits__place sits-price--middle";
                                                        price = bookedSeatList.get("VIP");
                                                    } else {
                                                        className = "sits__place sits__place__sweetbox sits-price--sweetbox";
                                                        price = bookedSeatList.get("SWEETBOX");
                                                    }
//                                                    if (reservedSeatsFlag && j < bookedSeats.length
//                                                            && (bookedSeats[j].toLowerCase().startsWith("l")
//                                                            || bookedSeats[j].toLowerCase().startsWith("u"))
//                                                            && bookedSeats[j].substring(2).equals(cinemaHallSeat.getRow() + i)) {
//
//                                                        className += " " + "sits-state--not";
//                                                        j++;
//
//                                                    }
                                                %>
                                                class="<%=className%>"
                                                data-place='<%=ghe.getIdGhe()%>'
                                                data-id='<%=ghe.getMaGhe()%>'
                                                data-showtime='<%=showtime.getMaXuatChieu()%>'
                                                data-price='<%=price%>'></span>
                                        <%
                                            }
                                        %>
                                    </div>
                                    <%
                                        }
                                    %>


                                    <aside class="sits__checked">
                                        <div class="checked-place"></div>
                                        <div class="checked-result">$0</div>
                                    </aside>
                                    <footer class="sits__number">
                                        <%
                                        for (int i = 1; i <= cinemaHall.getSoLuongGheMoiDay(); i++) {
                                        %>
                                        <span class="sits__indecator"><%=i%></span>
                                        <%
                                        }
                                        %>
                                    </footer>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-12 visible-xs">
                            <div class="sits-area--mobile">
                                <div class="sits-area--mobile-wrap">
                                    <div class="sits-select">
                                        <select name="sorting_item" class="sits__sort sit-row"
                                                tabindex="0">
                                            <%
                                            for (HangGhe cinemaHallSeat : seatList) {
                                            %>
                                            <option value="<%=cinemaHallSeat.getHang()%>"><%=cinemaHallSeat.getHang()%></option>
                                            <%
                                            }
                                            %>
                                            </select> <select name="sorting_item" class="sits__sort sit-number"
                                            tabindex="1">
                                            <%
                                            for (int i = 1; i <= cinemaHall.getSoLuongGheMoiDay(); i++) {
                                            %>
                                            <option value="<%=i%>" selected='selected'><%=i%></option>
                                            <%
                                            }
                                            %>
                                        </select> <a href="#" class="btn btn-md btn--warning toogle-sits">Choose
                                        sit</a>
                                    </div>
                                </div>

                                <a href="#" class="watchlist add-sits-line">Add new sit</a>

                                <aside class="sits__checked">
                                    <div class="checked-place">
                                        <span class="choosen-place"></span>
                                    </div>
                                    <div class="checked-result">&#2547;0</div>
                                </aside>

                                <img alt="" src="images/components/sits_mobile.png">
                            </div>
                        </div>

                    </div>
                </section>
                <div class="clearfix"></div>
                <form id='film-and-time' class="booking-form" method='get'
                      action='http://amovie.gozha.net/book3-buy.html'>

                    <input type='text' id='choosen-number' name='choosen-number'
                           class="choosen-number"> <input type='text'
                                                          name='choosen-number--cheap' class="choosen-number--cheap">
                    <input type='text' name='choosen-number--middle'
                           class="choosen-number--middle"> <input type='text'
                                                                  name='choosen-number--expansive'
                                                                  class="choosen-number--expansive"> <input type='text'
                                                                                                            name='choosen-cost'
                                                                                                            class="choosen-cost">
                    <input
                            type='text' name='choosen-sits' class="choosen-sits">


                    <div class="booking-pagination booking-pagination--margin">
                        <a href="book1.html" class="booking-pagination__prev"> <span
                                class="arrow__text arrow--prev">prev step</span> <span
                                class="arrow__info">what&amp;where&amp;when</span>
                        </a> <a href="javascript:void(0);" class="booking-pagination__next"
                                onclick="my_function()"> <span
                            class="arrow__text arrow--next">next step</span> <span
                            class="arrow__info">checkout</span>
                    </a>
                    </div>
                </form>
                <div class="clearfix"></div>
            </div>
        </div>
        <jsp:include page="/WEB-INF/templates/web/footer.jsp"/>
    </div>
</div>
<!-- /.modal -->
<div class="clearfix"></div>
<jsp:include page="/WEB-INF/templates/web/include_body_resources.jsp"/>
<script type="text/javascript">
    $(document)
        .ready(
            function () {
                init_BookingTwo();
                $('.booking-pagination__next')
                    .click(
                        function () {

                            if (typeof (Storage) !== "undefined") {
                                var seatList = JSON
                                    .parse(localStorage
                                        .getItem("seatList"));

                                if (seatList == null || seatList.length == 0) {
                                    alert('please select your seats for acessin to further process');
                                } else {
                                    console.log(seatList);
                                    var dup_seatList = [];
                                    for (var i = 0; i < seatList.length; i++) {
                                        dup_seatList.push(seatList[i].charAt(0) + '#' + seatList[i].substring(1, seatList[i].length));
                                    }
                                    console.log(dup_seatList.toString());
                                    console.log('<%=request.getContextPath()%>');
                                    var url = '<%=request.getContextPath()%>' + '/' + 'submit_selected_seats';
                                    $.post(
                                        url,
                                        {
                                            selected_seats: dup_seatList.toString(),
                                            ticket_price: '1000'

                                        },
                                        function (status) {
                                            window.location.href = '<%=request.getContextPath()%>' + '/booking_step3'
                                        });
                                }
                            } else {
                                alert('please update your browser');
                            }
                        });
            });
</script>
</body>
</html>