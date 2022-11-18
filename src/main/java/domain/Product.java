package domain;

import java.util.ArrayList;

import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

public class Product {
	 @Id
	  @GeneratedValue(strategy = GenerationType.IDENTITY)
	  private Long id;
	  private String name;
	  @ManyToOne(fetch = FetchType.LAZY)
	  private ArrayList<ItemOrder> itemOrders;
	  
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public ArrayList<ItemOrder> getItemOrders() {
		return itemOrders;
	}
	public void setItemOrders(ArrayList<ItemOrder> itemOrders) {
		this.itemOrders = itemOrders;
	}
	  
	  
}
