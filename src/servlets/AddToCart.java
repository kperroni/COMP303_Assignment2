package servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import classes.Product;

/**
 * Servlet implementation class AddToCart
 */
@WebServlet("/AddToCart")

public class AddToCart extends HttpServlet {
	private static final long serialVersionUID = 1L;
	List<Product> shoppingCartProducts;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddToCart() {
		super();
		List<Product> shoppingCartProducts = new ArrayList<Product>();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		List<Product> sessionProducts = (List<Product>) session.getAttribute("products");
		// Getting selected product
		for (Product product : sessionProducts) {
			if(request.getParameter("buttonSubmit_"+product.getSku()) != null) {
				System.out.println("Product selected is: "+request.getParameter("description_"+product.getSku()));
			}
		}
	}
}
