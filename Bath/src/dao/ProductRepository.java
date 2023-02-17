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
		Product B1 = new Product("B1", "���� ��Ʈ �� ������Ÿ����", 9000);
		B1.setDescription("�����, ��������, �ڸ�");
		B1.setCategory("BathBomb");
		B1.setManufacturer("LUSH");
		B1.setPerfume("O");
		B1.setFilename("B1.png");
		B1.setURL("THP3gTxGqjk");

		Product B2 = new Product("B2", "��ġ", 17000);
		B2.setDescription("�ڸ�, �ٹٳ� ��, ������");
		B2.setCategory("BathBomb");
		B2.setManufacturer("LUSH");
		B2.setPerfume("O");
		B2.setFilename("B2.png");
		B2.setURL("OaVHMWuPHy4");

		Product B3 = new Product("B3", "���Ͱ���ƽ", 17000);
		B3.setDescription("���۹�Ʈ, �ڸ�, ��Ƽ�� �Ѹ�");
		B3.setCategory("BathBomb");
		B3.setManufacturer("LUSH");
		B3.setPerfume("M");
		B3.setFilename("B3.png");
		B3.setURL("H5_FZNCmyiw");
		
		Product B4 = new Product("B4", "��Ŭ ���̺� ��", 6000);
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
		
		Product U1 = new Product("U1", "���̵����", 18000);
		U1.setDescription("������, ���۹�Ʈ, ���� ��");
		U1.setCategory("BubbleBar");
		U1.setManufacturer("LUSH");
		U1.setPerfume("M");
		U1.setFilename("U1.png");
		U1.setURL("A36SSII7x7E");

		Product U2 = new Product("U2", "������ ���� ��", 18000);
		U2.setDescription("������, �󺥴�, ��ī");
		U2.setCategory("BubbleBar");
		U2.setManufacturer("LUSH");
		U2.setPerfume("F");
		U2.setFilename("U2.png");
		U2.setURL("FSpItiBSwTA");

		Product U3 = new Product("U3", "���� ���� �÷���", 17000);
		U3.setDescription("���Ǿ��Ʈ");
		U3.setCategory("BubbleBar");
		U3.setManufacturer("LUSH");
		U3.setPerfume("M");
		U3.setFilename("U3.png");
		U3.setURL("2OvTqAFk488");
		
		Product U4 = new Product("U4", "��Ű Ĺ �����", 16000);
		U4.setDescription("�׷Ѹ�, �϶��϶�");
		U4.setCategory("BubbleBar");
		U4.setManufacturer("LUSH");
		U4.setPerfume("F");
		U4.setFilename("U4.png");
		U4.setURL("WCfqkQyL_sU");

		listOfProducts.add(U1);
		listOfProducts.add(U2);
		listOfProducts.add(U3);
		listOfProducts.add(U4);
		
		Product J1 = new Product("J1", "��Ʋ ������", 19000);
		J1.setDescription("���㳪��, ������, ���ּҳ���");
		J1.setCategory("JellyBomb");
		J1.setManufacturer("LUSH");
		J1.setPerfume("F");
		J1.setFilename("J1.png");
		J1.setURL("OwdAI3GMv8s");

		Product J2 = new Product("J2", "�����ö���", 13000);
		J2.setDescription("������, �ڸ�");
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
