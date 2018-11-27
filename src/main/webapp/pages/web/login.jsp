<%@ page language="java" contentType="text/html; charset=UTF-8"
         %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error</title>
        <jsp:include page="/WEB-INF/templates/web/include_header_resources.jsp" />
        <!--===============================================================================================-->	
        <link rel="icon" type="image/png" href="${pageContext.request.contextPath }/resources/images/icons/favicon.ico"/>
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/vendor/bootstrap/css/bootstrap.min.css">
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
            <jsp:include page="/WEB-INF/templates/web/menu.jsp" />
            <div class="main">
                <div class="error-content">
                    <jsp:include page="/WEB-INF/templates/web/header.jsp" />
                    <div class="limiter">
                        <div class="container-login100">
                            <div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-50">
                                <form class="login100-form validate-form">
                                    <span class="login100-form-title p-b-33">
                                        Account Login
                                    </span>

                                    <div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
                                        <input class="input100" type="text" name="email" placeholder="Email">
                                        <span class="focus-input100-1"></span>
                                        <span class="focus-input100-2"></span>
                                    </div>

                                    <div class="wrap-input100 rs1 validate-input" data-validate="Password is required">
                                        <input class="input100" type="password" name="pass" placeholder="Password">
                                        <span class="focus-input100-1"></span>
                                        <span class="focus-input100-2"></span>
                                    </div>

                                    <div class="container-login100-form-btn m-t-20">

                                        <button class="login100-form-btn">
                                        Sign in

                                        </button>
                                    </div>

                                    <div class="text-center p-t-45 p-b-4">
                                        <span class="txt1">
                                            Forgot
                                        </span>

                                        <a href="#" class="txt2 hov1">
                                            Username / Password?
                                        </a>
                                    </div>

                                    <div class="text-center">
                                        <span class="txt1">
                                            Create an account?
                                        </span>

                                        <a href="#" class="txt2 hov1">
                                            Sign up
                                        </a>
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