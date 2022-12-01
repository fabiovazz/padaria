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
<style>
body {
    background: #79e1ee;
    font-family: monospace;
}

h1 {
    color: #333;
    font-family: monospace;
}

.align {
    display: flex;
    flex-direction: column;
    align-items: center;
}

.align .row {
    display: flex;
    flex-direction: column;
    margin-bottom: 10px;
}

.align .container table {
    background: white;
    border-radius: 8px;
    box-shadow: 0px 1px 4px 0px #0000004f;
    padding: 40px;
    margin-top: 30px;
    width: 1000px;
}

.align .container table thead {
    background-color: #333;
    color: white;
}

.align .container table thead th {
    font-size: 16px;
}

.align .container .addProduct {
    font-size: 16px;
    background: #333;
    color: white;
    text-decoration: none;
    border-radius: 5px;
    padding: 9px;
}

.align .container table tbody tr td {
    font-size: 14px;
}

.align .container table tbody tr td a {
    font-size: 13px;
    background: #333;
    color: white;
    text-decoration: none;
    border-radius: 5px;
    padding: 2px;
}

.align .row label {
font-size: 20px;
    margin-bottom: 5px;
    color: #333;
}

.align .row input {
    border-radius: 10px;
    box-shadow: 0px 1px 4px 0px #0000004f;
    border: none;
    width: 400px;
       height:36px;
}

.align .row button {
    background-color: #333;
    margin-top: 10px;
    color: white;
    border: none;
    border-radius: 8px;
    height: 40px;
}
</style>