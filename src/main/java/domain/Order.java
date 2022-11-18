package domain;


import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class Order {
	 @Id
	  @GeneratedValue(strategy = GenerationType.IDENTITY)
	  private Long id;
	  @OneToOne(fetch = FetchType.LAZY)
	  private Client client;
	  @OneToMany(fetch = FetchType.LAZY)
	  private List<ItemOrder> itemOrders;
	  
	  private Date dateOrder;
	  
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Client getClient() {
		return client;
	}
	public void setClient(Client client) {
		this.client = client;
	}
	public List<ItemOrder> getItemOrders() {
		return itemOrders;
	}
	public void setItemOrders(List<ItemOrder> itemOrders) {
		this.itemOrders = itemOrders;
	}
	public Date getDateOrder() {
		return dateOrder;
	}
	public void setDateOrder(Date dateOrder) {
		this.dateOrder = dateOrder;
	}
	  
	  
}
