<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@page import="domain.Product"%>
<%@page import="dao.ProductDao"%>
<%@page import="domain.Client"%>
<%@page import="java.util.List"%>
<%@page import="dao.ClientDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Realizar Pedido</title>
</head>

<%
	ClientDao clientDao = new ClientDao();
	List<Client> clients = clientDao.findAll(Client.class);
	ProductDao productDao = new ProductDao();
	List<Product> products = productDao.findAll(Product.class);
%>

<body>
		<h1>Realizar Pedido</h1>
		
		
		<form action="ServletOrder" method="post">		
		<label for="clients">Cliente:</label>	
		<select name="client" id="clients" required>
		 <option value="" disabled selected>Selecione</option>
		    <%
				for(Client client : clients){
			%>
			<option value=<%=client.getId()%>><%=client.getName()%></option>
		<% }%>
		</select>
		<label for="products">Produto</label>
		<select name="product" id="products" required multiple="multiple">
		<option value="" disabled>Carrinho</option>		
			<%
				for(Product product : products){
			%>		
			<option value=<%=product.getId()%>><%=product.getName()%>
		
		<%} %>
		</select>
		<input name="dateOrder" type="datetime-local" />
		<button name="action" value="finishOrder" type="submit">Finalizar Pedido</button>
		</form>
		
		
</body>
</html>