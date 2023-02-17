package dao;

import java.util.ArrayList;

import dto.BubbleBar;

public class BubbleBarRepository {

	private ArrayList<BubbleBar> listOfProducts = new ArrayList<BubbleBar>();
	private static BubbleBarRepository instance = new BubbleBarRepository();

	public static BubbleBarRepository getInstance(){
		return instance;
	} 


	public BubbleBarRepository() {
		BubbleBar U1 = new BubbleBar("U1", "���̵����", 18000);
		U1.setDescription("������, ���۹�Ʈ, ���� ��");
		U1.setCategory("BubbleBar");
		U1.setManufacturer("LUSH");
		U1.setPerfume("M");
		U1.setFilename("U1.png");
		U1.setURL("A36SSII7x7E");

		BubbleBar U2 = new BubbleBar("U2", "������ ���� ��", 18000);
		U2.setDescription("������, �󺥴�, ��ī");
		U2.setCategory("BubbleBar");
		U2.setManufacturer("LUSH");
		U2.setPerfume("F");
		U2.setFilename("U2.png");
		U2.setURL("FSpItiBSwTA");

		BubbleBar U3 = new BubbleBar("U3", "���� ���� �÷���", 17000);
		U3.setDescription("���Ǿ��Ʈ");
		U3.setCategory("BubbleBar");
		U3.setManufacturer("LUSH");
		U3.setPerfume("M");
		U3.setFilename("U3.png");
		U3.setURL("2OvTqAFk488");
		
		BubbleBar U4 = new BubbleBar("U4", "��Ű Ĺ �����", 16000);
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
	}

	public ArrayList<BubbleBar> getAllProducts() {
		return listOfProducts;
	}
	
	public BubbleBar getProductById(String productId) {
		BubbleBar productById = null;

		for (int i = 0; i < listOfProducts.size(); i++) {
			BubbleBar product = listOfProducts.get(i);
			if (product != null && product.getProductId() != null && product.getProductId().equals(productId)) {
				productById = product;
				break;
			}
		}
		return productById;
	}
	
	public void addProduct(BubbleBar product) {
		listOfProducts.add(product);
	}
}
