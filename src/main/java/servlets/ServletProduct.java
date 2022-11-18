package servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductDao;
import domain.Client;
import domain.ItemOrder;
import domain.Product;

/**
 * Servlet implementation class ServletProduct
 */
@WebServlet("/ServletProduct")
public class ServletProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletProduct() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Product newProduct = new Product();
		
		
		newProduct.setName(request.getParameter("name"));
		newProduct.setPrice(Double.parseDouble(request.getParameter("price")));
		newProduct.setDescription(request.getParameter("description"));
		newProduct.setQuantity(Integer.parseInt(request.getParameter("quantity")));
		
		
		
		ProductDao dao = new ProductDao();
		dao.save(newProduct);
		
		System.out.println(newProduct.getName());
		System.out.println(newProduct.getPrice());
		System.out.println(newProduct.getDescription());
		System.out.println(newProduct.getQuantity());
	}

}
