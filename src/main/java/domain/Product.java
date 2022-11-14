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
}
