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
	<div class="align">
<h1>Editar Cliente</h1>
		
		<form action="ServletClient" method="post">
		<div class="row">
		<input type="hidden" name="clientId" value="<%=clientId %>" />
		<label>Nome</label>
		<input type="text" name="name" value="<%= client.getName() %>" required>
		<label>E-mail</label>
		<input type="text" name="email" value="<%= client.getEmail() %>"  required >
		<label>Telefone</label>
		<input type="tel" name="phone" value="<%=client.getPhone() %>" required >
		<button type="submit">Atualizar</button>
		</div>
		</form>
		</div>
</body>
</html>

<style>
body{
    background: #79e1ee;
    font-family: monospace;
}

h1{
	color: #333;
	font-family: monospace;
}

.align{
    display: flex;
    flex-direction: column;
    align-items: center;
}
.align .row{
    display: flex;
    flex-direction: column;
    margin-bottom: 10px;
}

.align .row label {
font-size: 20px;
    margin-bottom: 5px;
    color: #333;
    margin-bottom: 10px;
}

.align .row input {
	border-radius: 10px;
    box-shadow: 0px 1px 4px 0px #0000004f;
    border: none;
    width: 400px;
    height:36px;
}

.align .row button{
	background-color: #333;
    margin-top: 10px;
    color: white;
    border: none;
    border-radius: 8px;
    height: 40px;
}
</style>