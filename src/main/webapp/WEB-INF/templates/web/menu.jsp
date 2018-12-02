<%@ page language="java" contentType="text/html; charset=UTF-8"
	%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String url = request.getRequestURI();
		String homeClass = "";
		String movieListClass = "";
		String errorClass = "";
		String userClass = "";
		System.out.println("Menu: " +url);
		if (url.equals("/") || url.equals("/home_page")) {
		    homeClass = "active";
		} else if (url.equals("/movie_list_page")) {
		    movieListClass = "active";
		} else if (url.equals("/user_page") || url.equals("/login_page")) {
		    userClass = "active";
		} else {
		    errorClass = "active";
		}
	%>
	<div class="menu">
		<ul>
			<li><a class='<%=homeClass%>' href='/home'><i
					class="fa fa-4x fa-home"></i></a></li>
			<li><a class='<%=movieListClass%>' href='/movielist'><div class="cat">
						<i class="fa fa-4x fa-film"></i>
					</div></a></li>
			<li><a class='<%=errorClass%>' href="404.html"><div class="bk">
						<i class="fa fa-4x fa-ticket"></i>
					</div></a></li>
			<li><a class='<%=userClass%>' href="/login"><div class="cnt">
						<i class="fa fa-4x fa-user"></i>
					</div></a></li>
		</ul>
	</div>
</body>
</html>