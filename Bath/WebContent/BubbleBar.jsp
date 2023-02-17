<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.BubbleBar"%>
<%@ page import="dao.BubbleBarRepository"%>
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
p{
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

	<!-- Header -->
		<jsp:include page="header.jsp"/>
	<!-- Header -->
		

	<!-- Main -->
		<div id="main">
			
	<%
		BubbleBarRepository dao = BubbleBarRepository.getInstance();
		ArrayList<BubbleBar> listOfProducts = dao.getAllProducts();
	%>

	<div class="container">
				<section>
					<header>
						<h2>BUBBLE BARS</h2>
					</header>
		<div class="row" align="center">
		
			<%
				for (int i = 0; i < listOfProducts.size(); i++) {
					BubbleBar product = listOfProducts.get(i);
			%>
			<div class="4u">
			<section>
				<img src ="./images/<%=product.getFilename()%>" style ="width: 100%">
				<h3><%=product.getPname()%></h3>
				<p><%=product.getDescription()%>
				<p><%=product.getUnitPrice()%>원
				<p><a href="./product.jsp?id=<%=product.getProductId()%>" class="button"> 상세 정보 &raquo;</a>
			</section>
			</div>
			<%
				}
			%>
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