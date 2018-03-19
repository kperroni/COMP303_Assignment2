package classes;

import java.util.ArrayList;
import java.util.List;

public class ProductDAO {

	// Instance variables
	private List<Product> products;
	
	// Constructor
	public ProductDAO() {
		products = new ArrayList<Product>();
		this.initializeProducts();
	}
	
	// Method to initialize objects (Consider adding images to each product)
	private void initializeProducts() {
		products.add(new Product("elec-123", "ThinkPad Laptop", 5, 699.99, "Lenovo"));
		products.add(new Product("soft-321", "Windows 10 OS", 3, 80.99, "Microsoft"));
		products.add(new Product("elec-421", "iPhone X", 12, 1000.00, "Apple"));
		products.add(new Product("elec-131", "Smart Watch", 24, 70.99, "Huaweii"));
		products.add(new Product("elec-765", "Playstation 4", 9, 420.99, "Sony"));
	}
}
