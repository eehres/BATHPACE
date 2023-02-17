<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>

<%
	String id = request.getParameter("id");
	char a = id.charAt(0);
	
	if(a=='B'){
	if (id == null || id.trim().equals("")) {
		response.sendRedirect("BathBomb.jsp");
		return;
	}}else if(a=='J'){
		if (id == null || id.trim().equals("")) {
			response.sendRedirect("JellyBomb.jsp");
			return;
		}}else if(a=='U'){
			if (id == null || id.trim().equals("")) {
				response.sendRedirect("BubbleBar.jsp");
				return;
			}}

	ProductRepository dao = ProductRepository.getInstance();
	
	Product product = dao.getProductById(id);
	if (product == null) {
		response.sendRedirect("exceptionNoProductId.jsp");
	}

	ArrayList<Product> cartList = (ArrayList<Product>) session.getAttribute("cartlist");
	Product goodsQnt = new Product();
	for (int i = 0; i < cartList.size(); i++) { // 상품리스트 하나씩 출력하기
		goodsQnt = cartList.get(i);
		if (goodsQnt.getProductId().equals(id)) {
			cartList.remove(goodsQnt);
		}
	}

	response.sendRedirect("cart.jsp");
%>
