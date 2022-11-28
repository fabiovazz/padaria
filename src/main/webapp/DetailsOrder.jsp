<%@page import="dao.ProductDao"%>
<%@page import="java.util.List"%>
<%@page import="domain.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.OrderProductDao"%>
<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Pedido</title>
</head>
<body>
<%
	Double totalPriceOrder=0.0;
	Long id = Long.parseLong(request.getParameter("id"));
	System.out.println("Id order"+id);
	OrderProductDao orderProductDao = new OrderProductDao();
	ProductDao productDao = new ProductDao();
	List<Product> products = orderProductDao.getProductsByOrderId(id);
%>
	<h1>Detalhes do pedido</h1>
	
	<table class="table-containerProducts">
		<thead>
			<tr>
				<th>Nome</th>
				<th>Descricão</th>
				<th>Preço</th>
			</tr>
		</thead>
		<tbody>
			<%
				for(Product product : products){
				totalPriceOrder=totalPriceOrder+product.getPrice();	
			%>	
			<tr>
				<td><%=product.getName()%></td>
				<td><%=product.getDescription()%></td>
				<td><%=product.getPrice()%></td>
				
			</tr>
			<% }%>
		</tbody>
	</table>
		<p>Total:<%=totalPriceOrder%></p>
</body>
</html>