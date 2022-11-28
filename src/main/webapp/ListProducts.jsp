<%@page import="domain.Product"%>
<%@page import="java.util.List"%>
<%@page import="dao.ProductDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista de produtos</title>
</head>
<body>

<%
	ProductDao productDao = new ProductDao();
	List<Product> products = productDao.findAll(Product.class);
%>
	<h1>Produtos Cadastrados</h1>
	<div class="container">
	<a class="addProduct" href="CreateProduct.jsp">Novo Produto</a>
	<table class="table-containerProducts">
		<thead>
			<tr>
				<th>Nome</th>
				<th>Descricação</th>
				<th>Quantidade</th>
				<th>Preço</th>
			</tr>
		</thead>
		<tbody>
			<%
				for(Product product : products){
			%>			
			<tr>
				<td><%=product.getName() %></td>
				<td><%=product.getDescription() %></td>
				<td><%=product.getPrice() %> </td>
				<td>
					<a href="EditProduct.jsp?id=<%=product.getId()%>">Editar</a>
					
					<a href="<%= request.getContextPath()%>/ServletProduct?id=<%=product.getId()%>">Excluir</a>
				 </td>
			</tr>
			<% }%>
		</tbody>
	</table>
	</div>
</body>
</html>