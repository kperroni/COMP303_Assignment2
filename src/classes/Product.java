package classes;

public class Product {

	// Instance variables
	private String sku;
	private String description;
	private int numberInStock;
	private double unitPrice;
	private String brand;
	private int quantity;
	
	// Constructor
	public Product(String sku, String description, int numberInStock, double unitPrice, String brand,int quantity) {
		this.sku = sku;
		this.description = description;
		this.numberInStock = numberInStock;
		this.unitPrice = unitPrice;
		this.brand = brand;
		this.quantity= quantity;
	}

	// Getters and Setters
	public String getSku() {
		return sku;
	}

	public void setSku(String sku) {
		this.sku = sku;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getNumberInStock() {
		return numberInStock;
	}

	public void setNumberInStock(int numberInStock) {
		this.numberInStock = numberInStock;
	}

	public double getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(float unitPrice) {
		this.unitPrice = unitPrice;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}
	
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public int getQuantity() {
		return quantity;
	}
}
