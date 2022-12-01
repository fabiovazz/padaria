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

  .align .row input {
    border-radius: 10px;
    box-shadow: 0px 1px 4px 0px #0000004f;
    border: none;
    width: 400px;
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