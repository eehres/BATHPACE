<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
		<script type ="text/javascript" src ="./js/validation.js"></script>
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
text-align:center;}
h3{
font-family: 'S-CoreDream-9Black';
font-size : 22px;
}
		</style>
	</head>
	<body>
	<fmt:setLocale value='<%= request.getParameter("language") %>'/>
	<fmt:bundle basename="bundle.message">
	<!-- Header -->
		<jsp:include page="header.jsp"/>
	<!-- Header -->
		

	<!-- Main -->
		<div id="main">

	<div class="container">
				<section>
					<header>
						<h2><fmt:message key="title" /></h2>
					</header>
		<!-- 여기서부터 -->

	<div class="container">
		<div class="text-right"> 
			<a href="?language=ko" >Korean</a>|<a href="?language=en" >English</a>
			<a href="logout.jsp" class="btn btn-sm btn-success pull-right">logout</a>   
		</div>	
		<hr>
		<div align="center">
		<form name="newProduct" action="./processAddProduct.jsp" class="form-horizontal" method="post" enctype ="multipart/form-data">
			<div class="form-group row">
				<label class="2u"><fmt:message key="productId" /></label>
				<div class="3u">
					<input type="text" id ="productId" name="productId" class="form-control" >
				</div>
			</div>
			<div class="form-group row">
				<label class="2u"><fmt:message key="pname" /></label>
				<div class="3u">
					<input type="text" id ="name" name="name" class="form-control" >
				</div>
			</div>
			<div class="form-group row">
				<label class="2u"><fmt:message key="unitPrice"/></label>
				<div class="3u">
					<input type="text" id ="unitPrice" name="unitPrice" class="form-control" >
				</div>
			</div>
			<div class="form-group row">
				<label class="2u"><fmt:message key="description" /></label>
				<div class="3u">
					<textarea name="description" cols="50" rows="2"
						class="form-control"></textarea>
				</div>
			</div>
			<div class="form-group row">
				<label class="2u"><fmt:message key="manufacturer"/></label>
				<div class="3u">
					<input type="text" name="manufacturer" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="2u"><fmt:message key="category" /></label>
				<div class="3u">
					<input type="text" name="category" class="form-control" >
				</div>
			</div>

			<div class ="form-group row">
			<label class ="2u"><fmt:message key="perfume" /></label>
				<div class ="3u">
 					<input type="text" id="perfume" name="perfume" class="form-control" >
 				</div>
 			</div>
 			<div class ="form-group row">
			<label class ="2u"><fmt:message key="url" /></label>
				<div class ="3u">
 					<input type="text" name="url" class="form-control" >
 				</div>
 			</div>
			<div class ="form-group row">
			<label class ="2u"><fmt:message key="productImage" /></label>
				<div class ="3u">
 					<input type="file" name="productImage" class="form-control">
 				</div>
 			</div>
			<div class="form-group row">
				<div class="btn btn-sm btn-success pull-right">
					<input type ="button" class="button" value="<fmt:message key="button" />" onclick ="CheckAddProduct()">
				</div>
			</div>
		</form>
		</div>
	</div>

		<!-- 여기까지 -->
		</section>
	</div>
			</div>
			</fmt:bundle>
	<!-- /Footer -->

	<!-- Copyright -->
		<div id="copyright">
			<div class="container">
				<jsp:include page="footer.jsp"/>
			</div>
		</div>


	</body>
</html>