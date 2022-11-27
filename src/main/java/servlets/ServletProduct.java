package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductDao;
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
		ProductDao dao = new ProductDao();
		long productId = Long.parseLong(request.getParameter("id"));
		Product product = dao.findById(Product.class, productId).get();
		
		dao.delete(product);
		response.sendRedirect("ListProducts.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Product newProduct = new Product();
		ProductDao dao = new ProductDao();
		
		if (request.getParameter("productId") == null) 
		{
			newProduct.setName(request.getParameter("name"));
			newProduct.setPrice(Double.parseDouble(request.getParameter("price")));
			newProduct.setDescription(request.getParameter("description"));
			dao.save(newProduct);
		}
		else {
			long productId = Long.parseLong(request.getParameter("productId"));
			Product product = dao.findById(Product.class, productId).get();
			product.setName(request.getParameter("name"));
			product.setPrice(Double.parseDouble(request.getParameter("price")));
			product.setDescription(request.getParameter("description"));
			dao.update(product);
		}
		response.sendRedirect("ListProducts.jsp");
	}

}
