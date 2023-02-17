<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.JellyBomb"%>
<%@ page import="dao.JellyBombRepository"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE HTML>

<html>
	<head>
		<title>BATHPACE</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
		<!--[if lte IE 8]><script src="js/html5shiv.js"></script><![endif]-->
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
		<script src="js/skel.min.js"></script>
		<script src="js/skel-panels.min.js"></script>
		<script src="js/init.js"></script>
		<noscript>
			<link rel="stylesheet" href="css/skel-noscript.css" />
			<link rel="stylesheet" href="css/style.css" />
			<link rel="stylesheet" href="css/style-desktop.css" />
		</noscript>
				<style type="text/css">
		@font-face {
    font-family: 'NanumBarunpen';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_two@1.0/NanumBarunpen.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
@font-face {
     font-family: 'S-CoreDream-9Black';
     src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-9Black.woff') format('woff');
     font-weight: normal;
     font-style: normal;
}
h1{
font-family: 'S-CoreDream-9Black';
}
*{
 font-family: 'NanumBarunpen';
 font-size : 18px;
}
h2{
font-family: 'S-CoreDream-9Black';
text-align:center;
}
h3{
font-family: 'S-CoreDream-9Black';
font-size : 22px;
}
		</style>
	</head>
	<body>

	<!-- Header -->
		<jsp:include page="header.jsp"/>
	<!-- Header -->
		

	<!-- Main -->
		<div id="main">
			

	<div class="container">
				<section>
				<header>
						<h2>로그인</h2>
						<h3 align="center">Please sign in</h3>
					</header>
					<div class="container" align="center">
		<div>
			
			<br>
			<%
				String error = request.getParameter("error");
				if (error != null) {
					out.println("<div class='alert alert-danger'>");
					out.println("아이디와 비밀번호를 확인해 주세요");
					out.println("</div>");
				}
			%>
			<form class="form-signin" action="j_security_check" method="post">
				<div class="form-group">
				<!-- <label for="inputUserName" class="sr-only">User Name</label>	 -->
					<input type="text" class="form-control" placeholder="ID" name='j_username' required autofocus>
				</div>
				<div class="form-group">
					<!--<label for="inputPassword" class="sr-only">Password</label>  -->
					<input type="password" class="form-control" placeholder="Password" name='j_password' required>
				</div>
				<button class="button" type="submit">로그인</button>
			</form>
		</div>
	</div>
		</section>
	</div>
			</div>
		
	<!-- /Footer -->

	<!-- Copyright -->
		<div id="copyright">
			<div class="container">
				<jsp:include page="footer.jsp"/>
			</div>
		</div>


	</body>
</html>
