<%@ page import="java.util.Date" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Signup</title>
	<jsp:include page="/WEB-INF/templates/web/include_header_resources.jsp" />
	<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="${pageContext.request.contextPath }/resources/images/icons/favicon.ico"/>
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/vendor/animate/animate.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/vendor/css-hamburgers/hamburgers.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/vendor/animsition/css/animsition.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/vendor/select2/select2.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/vendor/daterangepicker/daterangepicker.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/util.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/main.css">
	<!--===============================================================================================-->
</head>
<body>
<div class="full">
	<jsp:include page="/WEB-INF/templates/web/menu.jsp"/>
	<div class="main">
		<div class="error-content">
			<jsp:include page="/WEB-INF/templates/web/header.jsp" />
			<div class="limiter">
				<div class="container-login100">
					<div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-50">
						<form class="login100-form validate-form" method="POST" action="${pageContext.request.contextPath}/register">
                                    <span class="login100-form-title p-b-33">
                                        Sign Up
                                    </span>
							<div class="wrap-input100 validate-input" data-validate="Field required!">
								<input class="input100" type="text" name="name" placeholder="Full Name">
							</div>

							<div class="wrap-input100 validate-input" data-validate="Field required!">
								<input class="input100" type="text" name="username" placeholder="Username">
							</div>

							<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
								<input class="input100" type="text" name="email" placeholder="Email">
							</div>

							<div class="wrap-input100 validate-input" data-validate = "The email you entered is not match!">
								<input class="input100" type="text" name="retype-email" placeholder="Repeat email">
							</div>

							<div class="wrap-input100 rs1 validate-input" data-validate="Field required!">
								<input class="input100" type="password" name="pass" placeholder="Password">
							</div>

							<div class="wrap-input100 rs1 validate-input" data-validate="The password you entered is not match!">
								<input class="input100" type="password" name="pass-retype" placeholder="Repeat password">
							</div>

							<div class="wrap-input100 input-group date validate-input" data-validate="Field required!" data-provide="datepicker">
								<input class="input100" type="text" name="birthday" placeholder="Birthday">
								<span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
							</div>

							<div class="wrap-input100 validate-input" data-validate="Field required">
								<select class="input100" id="gender">
									<option value="" selected disabled>Please select gender</option>
									<option value="0">Male</option>
									<option value="1">Female</option>
									<option value="2">Don't know</option>
								</select>
							</div>

							<div class="wrap-input100 validate-input" data-validate="Field required">
								<input class="input100" type="text" name="address" placeholder="Address">
							</div>

							<div class="container-login100-form-btn m-t-20">

								<button type="submit" class="login100-form-btn">
									Sign up

								</button>
							</div>
						</form>
					</div>
				</div>
			</div>


		</div>
		<jsp:include page="/WEB-INF/templates/web/footer.jsp" />
	</div>
</div>
<div class="clearfix"></div>
<jsp:include page="/WEB-INF/templates/web/include_body_resources.jsp"/>
<script type="text/javascript">
    init_login();
</script>

</body>
</html>