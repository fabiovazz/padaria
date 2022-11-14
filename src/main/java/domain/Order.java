package domain;


import java.util.ArrayList;
import java.util.Date;

import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
public class Order {
	 @Id
	  @GeneratedValue(strategy = GenerationType.IDENTITY)
	  private Long id;
	  @OneToOne(fetch = FetchType.LAZY)
	  private Client client;
	  @OneToMany(fetch = FetchType.LAZY)
	  private ArrayList<ItemOrder> itemOrders;
	  private Date dateOrder;
}
