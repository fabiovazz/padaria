package dao;

import java.util.ArrayList;
import java.util.List;


import javax.persistence.TypedQuery;

import domain.OrderProduct;
import domain.Product;

public class OrderProductDao extends Dao<OrderProduct,Long> {


	public List<Product> getProductsByOrderId(Long id)
	{
		List<Product> products = new ArrayList<Product>();
		try {
		TypedQuery<Product> query = em.createQuery("SELECT product FROM OrderProduct WHERE order_id = ?1", Product.class);
		query.setParameter(1, id);
		products= query.getResultList();
		} catch(Exception e) {
			System.out.println(e.getMessage());
		}
		return products;
	}
}
