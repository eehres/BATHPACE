<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.net.URLDecoder"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>

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
<%		
		String cartId = session.getId();

		String shipping_cartId = "";
		String shipping_name = "";	

		Cookie[] cookies = request.getCookies();

		if (cookies != null) {
			for (int i = 0; i < cookies.length; i++) {
				Cookie thisCookie = cookies[i];
				String n = thisCookie.getName();
				if (n.equals("Shipping_cartId"))
					shipping_cartId = URLDecoder.decode((thisCookie.getValue()), "utf-8");
					if (n.equals("Shipping_name"))
						shipping_name = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			}
		}
	%>
	<!-- Header -->
		<jsp:include page="header.jsp"/>
	<!-- Header -->
		

	<!-- Main -->
		<div id="main">
			

	<div class="container">
				<section>
					<div class="container">
					<%
					ProductRepository dao = ProductRepository.getInstance();
					ArrayList<Product> listOfProducts = dao.getAllProducts();
					
					
				int F = 0; //꽃향
				int M = 0; //민트향
				int O = 0; //과일향
				String per = null;
				String fume = null;
				
				ArrayList<Product> cartList = (ArrayList<Product>) session.getAttribute("cartlist");
			
				for (int i = 0; i < listOfProducts.size(); i++) { // 상품리스트 하나씩 출력하기
					Product product1 = listOfProducts.get(i);
				    
					for(int j = 0; j < cartList.size(); j++){
						Product product = cartList.get(j);
					
					if(product.getPname().equals(product1.getPname())){
					String a = product1.getPerfume();
					if(a.equals("F")){
						F++;
					}else if(a.equals("M")){
						M++;
					}else if(a.equals("O")){
						O++;
					}
				}
					}
				}
				
				int max = Math.max(F, Math.max(M, O));
				
				if(max==F){
					per="F";
				}else if(max==M){
					per="M";
				}else if(max==O){
					per="O";
				}
				
				if(per.equals("F")){
					fume = "플로럴 향";
				}else if(per.equals("M")){
					fume = "민트 향";
				}else if(per.equals("O")){
					fume ="과일 향";
				}
			%>
		<header>
						<h2><% out.println(shipping_name); %>님은 <%=fume%>을 좋아하시네요!</h2>
					<div align="center"><p>이 제품을 추천드려요.</p></div>
					</header>
	<%
	int b = 0;
				for (int i = 0; i < listOfProducts.size(); i++) {
					if(b==1) break;
					Product product1 = listOfProducts.get(i);
					String a = per;
					for(int j = 0; j < cartList.size(); j++){
						Product product = cartList.get(j);
						
					if(product1.getPerfume().equals(per)){
						if(product1.getPname().equals(product.getPname())){
							continue;
						}else{ 
							
			%>
			<div align="center">
			<div class="4u">
			<section>
				<img src ="./images/<%=product1.getFilename()%>" style ="width: 100%">
				<h3><%=product1.getPname()%></h3>
				<p><%=product1.getDescription()%>
				<p><%=product1.getUnitPrice()%>원
				<p><a href="./product.jsp?id=<%=product1.getProductId()%>" class="button"> 상세 정보 &raquo;</a>
			</section>
			</div>
			</div>
			<%
			b++;
			break;}
					}
				}
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

