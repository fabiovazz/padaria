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
<div class="align">
	<h1>Detalhes do pedido</h1>
	<div class="container">
	<table class="table-containerProducts">
		<thead>
			<tr>
				<th>Nome</th>
				<th>Descric�o</th>
				<th>Pre�o</th>
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
			<div>
		<p class="total">Total:<%=totalPriceOrder%></p>
	</div>
	</table>
	</div>
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
  
  .total{
      font-size: 19px;
    color: #333;
  }
</style>