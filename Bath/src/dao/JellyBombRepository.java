package dao;

import java.util.ArrayList;

import dto.JellyBomb;

public class JellyBombRepository {

	private ArrayList<JellyBomb> listOfProducts = new ArrayList<JellyBomb>();
	private static JellyBombRepository instance = new JellyBombRepository();

	public static JellyBombRepository getInstance(){
		return instance;
	} 


	public JellyBombRepository() {
		JellyBomb J1 = new JellyBomb("J1", "터틀 젤리밤", 19000);
		J1.setDescription("솔잣나무, 샌들우드, 구주소나무");
		J1.setCategory("JellyBomb");
		J1.setManufacturer("LUSH");
		J1.setPerfume("F");
		J1.setFilename("J1.png");
		J1.setURL("OwdAI3GMv8s");

		JellyBomb J2 = new JellyBomb("J2", "액토플라즘", 13000);
		J2.setDescription("오렌지, 자몽");
		J2.setCategory("JellyBomb");
		J2.setManufacturer("LUSH");
		J2.setPerfume("O");
		J2.setFilename("J2.png");
		J2.setURL("Y_Dkrz6it0c");

		listOfProducts.add(J1);
		listOfProducts.add(J2);

	}

	public ArrayList<JellyBomb> getAllProducts() {
		return listOfProducts;
	}
	
	public JellyBomb getProductById(String productId) {
		JellyBomb productById = null;

		for (int i = 0; i < listOfProducts.size(); i++) {
			JellyBomb product = listOfProducts.get(i);
			if (product != null && product.getProductId() != null && product.getProductId().equals(productId)) {
				productById = product;
				break;
			}
		}
		return productById;
	}
	
	public void addProduct(JellyBomb product) {
		listOfProducts.add(product);
	}
}
