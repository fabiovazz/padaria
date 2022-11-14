package domain;


import javax.persistence.Column;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import java.util.ArrayList;

public class ItemOrder {
	@Id
	  @GeneratedValue(strategy = GenerationType.IDENTITY)
	  private Long id;

	  @ManyToOne(fetch = FetchType.LAZY)
	  @JoinColumn(name = "product_id", nullable = false)
	  private Product product;

	  @ManyToOne(fetch = FetchType.LAZY)
	  @JoinColumn(name = "order_id", nullable = false)
	  private Order order;

	  private int quantity;

	  @Column(precision = 6, scale = 2)
	  private double price;
}
