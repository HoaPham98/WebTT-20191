<%@ page import="com.nhom17.model.dto.ThanhVien" %>
<%@ page import="com.nhom17.util.AppUtils" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <jsp:include page="/WEB-INF/templates/web/include_header_resources.jsp"/>
</head>
<body>
<jsp:include page="/WEB-INF/templates/web/menu.jsp"/>
<script type="text/javascript">
    $(document)
        .ready(
            function () {
                $('.auth__show').click(function (e) {
                    e.preventDefault();
                    $('.auth__function').toggleClass('open-function')
                })

                $('.btn--singin').click(function (e) {
                    e.preventDefault();
                    $('.auth__function').toggleClass('open-function')
                });
            });
</script>
<div class="top-header">
    <div class="logo1">
        <a href="/"><img alt=""
                         src="${pageContext.request.contextPath }/resources/images/logo.png"></a>
        <p>Movie Theater</p>
    </div>
    <%
        ThanhVien thanhVien = AppUtils.getLoginedUser(session);
    %>
    <div class="control-panel">
        <%
            if (thanhVien == null) {
        %>
        <a href="/login" class="btn btn--sign login-window">Sign in</a>
        <%
        } else {
        %>
        <div class="auth auth--home">
            <a href="#" class="btn btn--sign btn--singin"><%=thanhVien.getHoTen()%></a>
            <div class="auth__show">
                <span class="auth__image">
                    <img alt="" src="http://placehold.it/31x31">
                </span>
            </div>
            <ul class="auth__function">
                <li><a href="#" class="auth__function-item">User Detail</a></li>
                <li><a href="#" class="auth__function-item">Booked tickets</a></li>
                <li><a href="/logout" class="auth__function-item">Logout</a></li>
            </ul>

        </div>
        <%
            }
        %>
    </div>
    <div class="clearfix"></div>
</div>
</body>
</html>