<%@page import="domain.Product"%>
<%@page import="dao.ProductDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Editar Produto</title>
</head>
<body>
<%
	long productId = Long.parseLong(request.getParameter("id"));
	ProductDao productDao = new ProductDao();	 
	Product product = productDao.findById(Product.class, productId).get();
%>

<h1>Editar produto</h1>
		
		<form action="ServletProduct" method="post">
		<input type="hidden" name="productId" value="<%=productId %>" />
		<label>Nome</label>
		<input type="text" name="name" value="<%= product.getName() %>" required>
		<label>Descrição</label>
		<input type="text" name="description" value="<%= product.getDescription() %>"  required >
		<label>Preco</label>
		<input type="number" value="<%=product.getPrice()%>" min="0.00" max="10000.00" step="0.01" name="price" required >
		<button type="submit">Atualizar</button>
		</form>
</body>
</html>