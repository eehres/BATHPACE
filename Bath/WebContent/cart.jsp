<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE HTML>

<html>
	<head>
	<%
	String cartId = session.getId();
%>
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

table {
	width:100%;
	margin:15px 0;
	border:0;
}
th {
	font-family: 'S-CoreDream-9Black';
	background-color:#D5D5D5;
	color:black;
}
td {
 	font-family: 'NanumBarunpen';
	font-size:0.95em;
	text-align:center;
	padding:4px;
	border-collapse:collapse;
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
						<h2>WISH LISH</h2>
					</header>
		<div class="container">
		<div class="row">
			<table width="100%">
				<tr>
					<td align="left"><a href="./deleteCart.jsp?cartId=<%=cartId%>" class="button">삭제하기</a></td>
					<td align="right"><a href="./shippingInfo.jsp?cartId=<%= cartId %>" class="button">검사하기</a></td>
				</tr>
			</table>
		</div>
		<div style="padding-top: 50px">
			<table>
				<tr>
					<th>상품</th>
					<th>가격</th>
					<th>수량</th>
					<th>소계</th>
					<th>비고</th>
				</tr>
				<%				
					int sum = 0;
					ArrayList<Product> cartList = (ArrayList<Product>) session.getAttribute("cartlist");
					if (cartList == null)
						cartList = new ArrayList<Product>();

					for (int i = 0; i < cartList.size(); i++) { // 상품리스트 하나씩 출력하기
						Product product = cartList.get(i);
						int total = product.getUnitPrice() * product.getQuantity();
						sum = sum + total;
				%>
				<tr>
					<td><%=product.getProductId()%> - <%=product.getPname()%></td>
					<td><%=product.getUnitPrice()%></td>
					<td><%=product.getQuantity()%></td>
					<td><%=total%></td>
					<td><a href="./removeCart.jsp?id=<%=product.getProductId()%>" class="badge badge-danger">삭제</a></td>
				</tr>
				<%
					}
				%>
				
			</table>
			
		</div>
		</div>
		</section>
			</div>
		</div>
<div id="copyright">
			<div class="container">
				<jsp:include page="footer.jsp"/>
			</div>
		</div>

	</body>
</html>