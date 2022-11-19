<%@page import="domain.Client"%>
<%@page import="dao.ClientDao"%>
<%@page import="domain.Product"%>
<%@page import="java.util.List"%>
<%@page import="dao.ProductDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista de clientes</title>
</head>
<body>

<%
	ClientDao clientDao = new ClientDao();
	List<Client> clients = clientDao.findAll(Client.class);
	
%>
	<h1>Clientes Cadastrados</h1>
	<div class="container">
	<a class="addClient" href="CreateClient.jsp">Novo Cliente</a>
	<table class="table-containerClient">
		<thead>
			<tr>
				<th>Nome</th>
				<th>E-Mail</th>
				<th>Telefone</th>
			</tr>
		</thead>
		<tbody>
			<%
				for(Client client : clients){
			%>			
			<tr>
				<td><%=client.getName() %></td>
				<td><%=client.getEmail() %></td>
				<td><%=client.getPhone() %> </td>
				<td>
					<a href="EditClient.jsp?id=<%=client.getId()%>">Editar</a>
					
					<a href="<%= request.getContextPath()%>/ServletClient?id=<%=client.getId()%>">Excluir</a>
				 </td>
				
			</tr>
			<% }%>
		</tbody>
	</table>
	</div>
</body>
</html>