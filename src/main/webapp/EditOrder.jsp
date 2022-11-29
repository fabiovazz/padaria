<%@page import="domain.Order"%>
<%@page import="dao.OrderDao"%>
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
<title>Editar Pedido</title>
</head>
<body>
	<%
	long clientId = Long.parseLong(request.getParameter("id"));
	ClientDao clientDao = new ClientDao();
	List<Client> clients = clientDao.findAll(Client.class);
	%>

<body>
	<h1>Editar Pedido</h1>
	<form action="ServletOrder" method="post">
		<input type="hidden" name="orderId" value="<%=clientId %>" />
		<label for="clients">Cliente:</label> <select name="client"
			id="clients" required>
			<option value="" disabled selected>Selecione</option>
			<%
			for (Client client : clients) {
			%>
			<option value=<%=client.getId()%>><%=client.getName()%></option>
			<%
			}
			%>
		</select> 
		 
		<input name="dateOrder" type="datetime-local" />
		<div>
			<input type="radio" id="yes" name="finished" value="yes"/> 
			<label for="yes" > Sim </label> 
			<input type="radio" id="no" name="finished" value="no"/>
			<label for="no">Não</label>
		</div>

		<button name="action" value="finishOrder" type="submit">Salvar</button>
	</form>


</body>
</html>