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
		BathBomb B1 = new BathBomb("B1", "���� ��Ʈ �� ������Ÿ����", 9000);
		B1.setDescription("�����, ��������, �ڸ�");
		B1.setCategory("BathBomb");
		B1.setManufacturer("LUSH");
		B1.setPerfume("O");
		B1.setFilename("B1.png");
		B1.setURL("THP3gTxGqjk");

		BathBomb B2 = new BathBomb("B2", "��ġ", 17000);
		B2.setDescription("�ڸ�, �ٹٳ� ��, ������");
		B2.setCategory("BathBomb");
		B2.setManufacturer("LUSH");
		B2.setPerfume("O");
		B2.setFilename("B2.png");
		B2.setURL("OaVHMWuPHy4");

		BathBomb B3 = new BathBomb("B3", "���Ͱ���ƽ", 17000);
		B3.setDescription("���۹�Ʈ, �ڸ�, ��Ƽ�� �Ѹ�");
		B3.setCategory("BathBomb");
		B3.setManufacturer("LUSH");
		B3.setPerfume("M");
		B3.setFilename("B3.png");
		B3.setURL("H5_FZNCmyiw");
		
		BathBomb B4 = new BathBomb("B4", "��Ŭ ���̺� ��", 6000);
		B4.setDescription("�󺥴�, ī����, ���޿��");
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
