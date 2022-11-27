package servlets;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ClientDao;
import dao.OrderDao;
import dao.OrderProductDao;
import dao.ProductDao;
import domain.Client;
import domain.Order;
import domain.OrderProduct;
import domain.Product;

/**
 * Servlet implementation class ServletOrder
 */
@WebServlet("/ServletOrder")
public class ServletOrder extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ServletOrder() {
		super();
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

		OrderProductDao orderProductDao = new OrderProductDao();

		Order order = new Order();
		OrderDao orderDao = new OrderDao();

		ProductDao productDao = new ProductDao();
		ArrayList<Product> products = new ArrayList<Product>();
		String[] productsSelected = request.getParameterValues("product");

		Client client = new Client();
		ClientDao clientDao = new ClientDao();
		Long clientId = Long.parseLong(request.getParameter("client"));

		Date dateOrder = null;
		String dateOrderText = request.getParameter("dateOrder");
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");

		try {
			dateOrder = formatter.parse(dateOrderText);
		} catch (ParseException e) {
			e.printStackTrace();
		}

		client = clientDao.findById(Client.class, clientId).get();

		order.setClient(client);
		order.setDateOrder(dateOrder);
		orderDao.save(order);

		for (String productId : productsSelected) {
			products.add(productDao.findById(Product.class, Long.parseLong(productId)).get());
		}

		OrderProduct[] orderProduct = new OrderProduct[products.size()];
		Product[] productArray = new Product[products.size()];
		for (int i = 0; i < products.size(); i++) {
			orderProduct[i] = new OrderProduct();
			productArray[i] = new Product();
		}

		System.out.println("tamanho " + orderProduct.length);

		for (int i = 0; i < orderProduct.length; i++) {
			orderProduct[i].setProduct(products.get(i));
			orderProduct[i].setOrder(order);
			orderProductDao.save(orderProduct[i]);
		}

	}

}