<%@page import="domain.Client"%>
<%@page import="dao.ClientDao"%>
<%@page import="domain.Product"%>
<%@page import="dao.ProductDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Editar Cliente</title>
</head>
<body>
<%
	long clientId = Long.parseLong(request.getParameter("id"));
	ClientDao clientDao = new ClientDao();	 
	Client client = clientDao.findById(Client.class, clientId).get();
%>

<h1>Editar Cliente</h1>
		
		<form action="ServletClient" method="post">
		<input type="hidden" name="clientId" value="<%=clientId %>" />
		<label>Nome</label>
		<input type="text" name="name" value="<%= client.getName() %>" required>
		<label>E-mail</label>
		<input type="text" name="email" value="<%= client.getEmail() %>"  required >
		<label>Telefone</label>
		<input type="tel" name="phone" value="<%=client.getPhone() %>" required >
		<button type="submit">Atualizar</button>
		</form>
</body>
</html>