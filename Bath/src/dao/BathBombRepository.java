package dao;

import java.util.ArrayList;

import dto.BathBomb;

import dto.Product;

public class BathBombRepository {

	private ArrayList<BathBomb> listOfProducts = new ArrayList<BathBomb>();
	private static BathBombRepository instance = new BathBombRepository();
	private ArrayList<Product> listOfAllProducts = new ArrayList<Product>();

	public static BathBombRepository getInstance(){
		return instance;
	} 


	public BathBombRepository() {
		BathBomb B1 = new BathBomb("B1", "아이 원트 어 히포포타무스", 9000);
		B1.setDescription("라즈베리, 베르가못, 자몽");
		B1.setCategory("BathBomb");
		B1.setManufacturer("LUSH");
		B1.setPerfume("O");
		B1.setFilename("B1.png");
		B1.setURL("THP3gTxGqjk");

		BathBomb B2 = new BathBomb("B2", "피치", 17000);
		B2.setDescription("자몽, 다바나 꽃, 복숭아");
		B2.setCategory("BathBomb");
		B2.setManufacturer("LUSH");
		B2.setPerfume("O");
		B2.setFilename("B2.png");
		B2.setURL("OaVHMWuPHy4");

		BathBomb B3 = new BathBomb("B3", "인터갈란틱", 17000);
		B3.setDescription("페퍼민트, 자몽, 베티버 뿌리");
		B3.setCategory("BathBomb");
		B3.setManufacturer("LUSH");
		B3.setPerfume("M");
		B3.setFilename("B3.png");
		B3.setURL("H5_FZNCmyiw");
		
		BathBomb B4 = new BathBomb("B4", "이클 베이비 봇", 6000);
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
	}

	public ArrayList<BathBomb> getAllProducts() {
		return listOfProducts;
	}
	
	public ArrayList<Product> getAllProducts2() {
		return listOfAllProducts;
	}
	
	public BathBomb getProductById(String productId) {
		BathBomb productById = null;

		for (int i = 0; i < listOfProducts.size(); i++) {
			BathBomb product = listOfProducts.get(i);
			if (product != null && product.getProductId() != null && product.getProductId().equals(productId)) {
				productById = product;
				break;
			}
		}
		return productById;
	}
	
	public void addProduct(BathBomb product) {
		listOfProducts.add(product);
	}
}
