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
	<div class="align">
	<h1>Clientes Cadastrados</h1>
	<div class="container">
	<a class="addProduct" href="CreateClient.jsp">Novo Cliente</a>
	<table class="table-containerClient">
		<thead>
			<tr>
				<th>Nome</th>
				<th>E-Mail</th>
				<th>Telefone</th>
				<th></th>
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