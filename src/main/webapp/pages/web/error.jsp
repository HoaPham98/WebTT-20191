<%@ page language="java" contentType="text/html; charset=UTF-8"
	%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Error</title>
<jsp:include page="/WEB-INF/templates/web/include_header_resources.jsp" />
</head>
<body>
	<div class="full">
		<jsp:include page="/WEB-INF/templates/web/menu.jsp" />
		<div class="main">
			<div class="error-content">
				<jsp:include page="/WEB-INF/templates/web/header.jsp" />
				<div class="error-404 text-center">
					<h2>404</h2>
					<p>Sorry this was unexpected</p>
					<a class="b-home" href="/">Back to Home</a>
				</div>
			</div>
			<jsp:include page="/WEB-INF/templates/web/footer.jsp" />
		</div>
	</div>
	<div class="clearfix"></div>
</body>
</html>