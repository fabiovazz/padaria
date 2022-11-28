<%@page import="java.text.SimpleDateFormat"%>
<%@page import="domain.Order"%>
<%@page import="dao.OrderDao"%>
<%@page import="domain.Product"%>
<%@page import="java.util.List"%>
<%@page import="dao.ProductDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lista de produtos</title>
</head>
<body>

<%
	SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
	OrderDao orderDao = new OrderDao();
	List<Order> orders = orderDao.findAll(Order.class);
%>
	<h1>Pedidos Realizados</h1>
	<div class="container">
	<a class="addProduct" href="CreateOrder.jsp">Novo Pedido</a>
	<table class="table-containerProducts">
		<thead>
			<tr>
				<th>Cliente</th>
				<th>Data de entrega</th>
				<th>Finalizado</th>
			</tr>
		</thead>
		<tbody>
			<%
				for(Order order : orders){
			%>			
			<tr>
				<td><%=order.getClient().getName() %></td>
				<td><%=formatter.format(order.getDateOrder()) %></td>
				<td><%=order.getFinished()? "Sim": "Não"%></td>
				<td>
					<a href="DetailsOrder.jsp?id=<%=order.getId()%>">Ver Mais</a>
					<a href="EditOrder.jsp?id=<%=order.getId()%>">Editar</a>
					<a href="<%= request.getContextPath()%>/ServletOrder?id=<%=order.getId()%>">Excluir</a>
				 </td>
			</tr>
			<% }%>
		</tbody>
	</table>
	</div>
</body>
</html>