package dao;

import java.util.ArrayList;

import dto.Product;

public class ProductRepository {

	private ArrayList<Product> listOfProducts = new ArrayList<Product>();
	private static ProductRepository instance = new ProductRepository();

	public static ProductRepository getInstance(){
		return instance;
	} 


	public ProductRepository() {
		Product B1 = new Product("B1", "아이 원트 어 히포포타무스", 9000);
		B1.setDescription("라즈베리, 베르가못, 자몽");
		B1.setCategory("BathBomb");
		B1.setManufacturer("LUSH");
		B1.setPerfume("O");
		B1.setFilename("B1.png");
		B1.setURL("THP3gTxGqjk");

		Product B2 = new Product("B2", "피치", 17000);
		B2.setDescription("자몽, 다바나 꽃, 복숭아");
		B2.setCategory("BathBomb");
		B2.setManufacturer("LUSH");
		B2.setPerfume("O");
		B2.setFilename("B2.png");
		B2.setURL("OaVHMWuPHy4");

		Product B3 = new Product("B3", "인터갈란틱", 17000);
		B3.setDescription("페퍼민트, 자몽, 베티버 뿌리");
		B3.setCategory("BathBomb");
		B3.setManufacturer("LUSH");
		B3.setPerfume("M");
		B3.setFilename("B3.png");
		B3.setURL("H5_FZNCmyiw");
		
		Product B4 = new Product("B4", "이클 베이비 봇", 6000);
		B4.setDescription("라벤더, 카모마일, 샌달우드");
		B4.setCategory("BathBomb");
		B4.setManufacturer("LUSH");
		B4.setPerfume("F");
		B4.setFilename("B4.png");
		B4.setURL("eK-wYRyh2Ew");

		listOfProducts.add(B1);
		listOfProducts.add(B2);
		listOfProducts.add(B3);
		listOfProducts.add(B4);
		
		Product U1 = new Product("U1", "레이디버그", 18000);
		U1.setDescription("옥수수, 페퍼민트, 제라늄 꽃");
		U1.setCategory("BubbleBar");
		U1.setManufacturer("LUSH");
		U1.setPerfume("M");
		U1.setFilename("U1.png");
		U1.setURL("A36SSII7x7E");

		Product U2 = new Product("U2", "슬리피 버블 바", 18000);
		U2.setDescription("옥수수, 라벤더, 통카");
		U2.setCategory("BubbleBar");
		U2.setManufacturer("LUSH");
		U2.setPerfume("F");
		U2.setFilename("U2.png");
		U2.setURL("FSpItiBSwTA");

		Product U3 = new Product("U3", "폴라 베어 플런지", 17000);
		U3.setDescription("스피어민트");
		U3.setCategory("BubbleBar");
		U3.setManufacturer("LUSH");
		U3.setPerfume("M");
		U3.setFilename("U3.png");
		U3.setURL("2OvTqAFk488");
		
		Product U4 = new Product("U4", "럭키 캣 버블바", 16000);
		U4.setDescription("네롤리, 일랑일랑");
		U4.setCategory("BubbleBar");
		U4.setManufacturer("LUSH");
		U4.setPerfume("F");
		U4.setFilename("U4.png");
		U4.setURL("WCfqkQyL_sU");

		listOfProducts.add(U1);
		listOfProducts.add(U2);
		listOfProducts.add(U3);
		listOfProducts.add(U4);
		
		Product J1 = new Product("J1", "터틀 젤리밤", 19000);
		J1.setDescription("솔잣나무, 샌들우드, 구주소나무");
		J1.setCategory("JellyBomb");
		J1.setManufacturer("LUSH");
		J1.setPerfume("F");
		J1.setFilename("J1.png");
		J1.setURL("OwdAI3GMv8s");

		Product J2 = new Product("J2", "액토플라즘", 13000);
		J2.setDescription("오렌지, 자몽");
		J2.setCategory("JellyBomb");
		J2.setManufacturer("LUSH");
		J2.setPerfume("O");
		J2.setFilename("J2.png");
		J2.setURL("Y_Dkrz6it0c");

		listOfProducts.add(J1);
		listOfProducts.add(J2);
	}

	public ArrayList<Product> getAllProducts() {
		return listOfProducts;
	}
	
	
	public Product getProductById(String productId) {
		Product productById = null;

		for (int i = 0; i < listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
			if (product != null && product.getProductId() != null && product.getProductId().equals(productId)) {
				productById = product;
				break;
			}
		}
		return productById;
	}
	
	public void addProduct(Product product) {
		listOfProducts.add(product);
	}
}
