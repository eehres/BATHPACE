<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.*"%>
<%@ page import="dto.BathBomb"%>
<%@ page import="dao.BathBombRepository"%>
<%@ page import="dto.JellyBomb"%>
<%@ page import="dao.JellyBombRepository"%>
<%@ page import="dto.BubbleBar"%>
<%@ page import="dao.BubbleBarRepository"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>

<%
	request.setCharacterEncoding("UTF-8");

	String filename = "";
	 String realFolder = "C://Users//User//eclipse-workspace//Bath//WebContent//images/"; //웹 어플리케이션상의 절대 경로
	String encType = "utf-8"; //인코딩 타입
	int maxSize = 5 * 1024 * 1024; //최대 업로드될 파일의 크기5Mb

	MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());

	String productId = multi.getParameter("productId");
	String name = multi.getParameter("name");
	String unitPrice = multi.getParameter("unitPrice");
	String description = multi.getParameter("description");
	String manufacturer = multi.getParameter("manufacturer");
	String category = multi.getParameter("category");
	String perfume = multi.getParameter("perfume");
	String url = multi.getParameter("url");

	
	Integer price;
	
	char a = productId.charAt(0); 
	
	if (unitPrice.isEmpty())
		price = 0;
	else
		price = Integer.valueOf(unitPrice);

	
	Enumeration files = multi.getFileNames();
	String fname = (String) files.nextElement();
	String fileName = multi.getFilesystemName(fname);

	ProductRepository dao = ProductRepository.getInstance();

	Product newProduct1 = new Product();
	newProduct1.setProductId(productId);
	newProduct1.setPname(name);
	newProduct1.setUnitPrice(price);
	newProduct1.setDescription(description);
	newProduct1.setManufacturer(manufacturer);
	newProduct1.setCategory(category);
	newProduct1.setPerfume(perfume);
	newProduct1.setURL(url);
	newProduct1.setFilename(fileName);

	dao.addProduct(newProduct1);

	
	if(a == 'B'){
		
	BathBombRepository daoBath = BathBombRepository.getInstance();

	BathBomb newProduct = new BathBomb();
	newProduct.setProductId(productId);
	newProduct.setPname(name);
	newProduct.setUnitPrice(price);
	newProduct.setDescription(description);
	newProduct.setManufacturer(manufacturer);
	newProduct.setCategory(category);
	newProduct.setPerfume(perfume);
	newProduct.setURL(url);
	newProduct.setFilename(fileName);

	daoBath.addProduct(newProduct);

	response.sendRedirect("BathBomb.jsp");
	}else if(a == 'J'){
	
			JellyBombRepository daoJelly = JellyBombRepository.getInstance();

			JellyBomb newProduct = new JellyBomb();
			newProduct.setProductId(productId);
			newProduct.setPname(name);
			newProduct.setUnitPrice(price);
			newProduct.setDescription(description);
			newProduct.setManufacturer(manufacturer);
			newProduct.setCategory(category);
			newProduct.setPerfume(perfume);
			newProduct.setURL(url);
			newProduct.setFilename(fileName);

			daoJelly.addProduct(newProduct);

			response.sendRedirect("JellyBomb.jsp");
			}else if(a == 'U'){
			
				BubbleBarRepository daoBubble = BubbleBarRepository.getInstance();

				BubbleBar newProduct = new BubbleBar();
				newProduct.setProductId(productId);
				newProduct.setPname(name);
				newProduct.setUnitPrice(price);
				newProduct.setDescription(description);
				newProduct.setManufacturer(manufacturer);
				newProduct.setCategory(category);
				newProduct.setCategory(perfume);
				newProduct.setURL(url);
				newProduct.setFilename(fileName);

				daoBubble.addProduct(newProduct);

				response.sendRedirect("BubbleBar.jsp");
				}
		
	
%>
