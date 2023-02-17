<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.JellyBomb"%>
<%@ page import="dao.JellyBombRepository"%>
<%@ page import="dto.BathBomb"%>
<%@ page import="dao.BathBombRepository"%>
<%@ page import="dto.BubbleBar"%>
<%@ page import="dao.BubbleBarRepository"%>
<%@ page import="java.util.ArrayList"%>
<%@ page errorPage="exceptionNoProductId.jsp" %>

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
		<script type="text/javascript">
	function addToCart() {
		if (confirm("상품을 장바구니에 추가하시겠습니까?")) {
			document.addForm.submit();
		} else {		
			document.addForm.reset();
		}
	}</script>
	</head>
	<body>

	<!-- Header -->
		<jsp:include page="header.jsp"/>
	<!-- Header -->
		

	<!-- Main -->
		<div id="main">
			
		<%
		String id = request.getParameter("id");
		BathBombRepository daoBath = BathBombRepository.getInstance();
		BathBomb bathbomb = daoBath.getProductById(id);
		JellyBombRepository daoJelly = JellyBombRepository.getInstance();
		JellyBomb jellybomb = daoJelly.getProductById(id);
		BubbleBarRepository daoBubble = BubbleBarRepository.getInstance();
		BubbleBar bubblebar = daoBubble.getProductById(id);
		char a = id.charAt(0);
	%>
	<div class="container">
		<div class="row">
		<%if(a == 'B') {%>
			<div class ="col-md-5">
			
				<img src="./images/<%=bathbomb.getFilename()%>" style="width: 100%" />
			</div>
			<div class="col-md-6">
				<h3><%=bathbomb.getPname()%></h3>
				<p><%=bathbomb.getDescription()%>
				<p><b>상품 코드 : </b><span class="badge badge-danger"> <%=bathbomb.getProductId()%></span>
				<p><b>제조사</b> : <%=bathbomb.getManufacturer()%>
				<p><b>분류</b> : <%=bathbomb.getCategory()%>
				<h4><%=bathbomb.getUnitPrice()%>원</h4>
				
				<p><form name="addForm" action="./addCart.jsp?id=<%=bathbomb.getProductId()%>" method="post">
					<a href="#" class="button" onclick="addToCart()"> 검사하기 &raquo;</a> 
					<a href="./cart.jsp" class="button"> 장바구니 &raquo;</a>
					<a href="./BathBomb.jsp" class="button"> 상품 목록 &raquo;</a>
				</form>
				<br>
				<iframe width="560" height="315" src="https://www.youtube.com/embed/<%=bathbomb.getURL()%>" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
				<br>
				
			</div>
			<%}else if(a == 'U'){%>
			<div class ="col-md-5">
			
				<img src="./images/<%=bubblebar.getFilename()%>" style="width: 100%" />
			</div>
			<div class="col-md-6">
				<h3><%=bubblebar.getPname()%></h3>
				<p><%=bubblebar.getDescription()%>
				<p><b>상품 코드 : </b><span class="badge badge-danger"> <%=bubblebar.getProductId()%></span>
				<p><b>제조사</b> : <%=bubblebar.getManufacturer()%>
				<p><b>분류</b> : <%=bubblebar.getCategory()%>
				<h4><%=bubblebar.getUnitPrice()%>원</h4>
				<p><form name="addForm" action="./addCart.jsp?id=<%=bubblebar.getProductId()%>" method="post">
					<a href="#" class="button" onclick="addToCart()"> 검사하기 &raquo;</a> 
					<a href="./cart.jsp" class="button"> 장바구니 &raquo;</a>
					<a href="./BubbleBar.jsp" class="button"> 상품 목록 &raquo;</a>
				</form>
				<br>
				<iframe width="560" height="315" src="https://www.youtube.com/embed/<%=bubblebar.getURL()%>" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
				<br>
			</div>
			<%} else if(a == 'J') {%>
			<div class ="col-md-5">
			
				<img src="./images/<%=jellybomb.getFilename()%>" style="width: 100%" />
			</div>
			<div class="col-md-6">
				<h3><%=jellybomb.getPname()%></h3>
				<p><%=jellybomb.getDescription()%>
				<p><b>상품 코드 : </b><span class="badge badge-danger"> <%=jellybomb.getProductId()%></span>
				<p><b>제조사</b> : <%=jellybomb.getManufacturer()%>
				<p><b>분류</b> : <%=jellybomb.getCategory()%>
				<h4><%=jellybomb.getUnitPrice()%>원</h4>
				<p><form name="addForm" action="./addCart.jsp?id=<%=jellybomb.getProductId()%>" method="post">
					<a href="#" class="button" onclick="addToCart()"> 검사하기 &raquo;</a> 
					<a href="./cart.jsp" class="button"> 장바구니 &raquo;</a>
					<a href="./JellyBomb.jsp" class="button"> 상품 목록 &raquo;</a>
				</form>
				<br>
				<iframe width="560" height="315" src="https://www.youtube.com/embed/<%=jellybomb.getURL()%>" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
				<br>
			</div>
			<%} %>
		</div>
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