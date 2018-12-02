<%@ page import="java.util.Date" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <jsp:include page="/WEB-INF/templates/web/include_header_resources.jsp" />
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
                                <form class="login100-form validate-form" method="POST" action="${pageContext.request.contextPath}/login">
                                    <span class="login100-form-title p-b-33">
                                        Account Login
                                    </span>

                                    <div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
                                        <input class="input100" type="text" name="username" placeholder="Username or Email">
                                        <span class="focus-input100-1"></span>
                                        <span class="focus-input100-2"></span>
                                    </div>

                                    <div class="wrap-input100 rs1 validate-input" data-validate="Password is required">
                                        <input class="input100" type="password" name="pass" placeholder="Password">
                                        <span class="focus-input100-1"></span>
                                        <span class="focus-input100-2"></span>
                                    </div>

                                    <div class="container-login100-form-btn m-t-20">

                                        <button type="submit" class="login100-form-btn">
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