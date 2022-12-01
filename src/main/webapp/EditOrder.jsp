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
<div class="align">
	<h1>Editar Pedido</h1>
	<form action="ServletOrder" method="post">
		<input type="hidden" name="orderId" value="<%=clientId %>" />
		<div class="row">
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
		 <div style="margin-top: 20px;">
		<input name="dateOrder" type="datetime-local" />
		</div>
		<div style="margin-top: 20px;">
			<div class="check">
				<input class="radio" type="radio" id="yes" name="finished" value="yes"/> 
				<label for="yes" > Sim </label> 
			</div>
			<div class="check">
				<input class="radio" type="radio" id="no" name="finished" value="no"/>
				<label for="no">Não</label>
			</div>
		</div>

		<button name="action" value="finishOrder" type="submit">Salvar</button>
			</div>
	</form>

	</div>
	<div class="btnmenu">
		<a class="menu" href="Home.jsp"><button>Menu</button></a>
</div>
</body>
</html>
<style>
.btnmenu{
	display:flex;
	justify-content:center;
}
.menu button{
	width: 150px;
	height: 50px;
	background-color: #ffff;
	border-color: #79e1ee;
	border-radius: 10px;
	font-weight: bold;
	
}
.menu button:hover{
	background-color: #79e1ee;
	color: #ffff;
	font-weight: bold;
	border-color: #79e1ee;
	border-radius: 10px;
	cursor:pointer;
}
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

.align .row select {
	border-radius: 10px;
    box-shadow: 0px 1px 4px 0px #0000004f;
    border: none;
    width: 400px;
    height:36px;
}

.align .row select.choose {
	border-radius: 0;
	height: auto;
}

.align .row .check{
	display: flex;
    gap: 10px;
    align-items: center;
  }

.align .row .check label {
	margin-bottom: 0;
  }

.align .row input.radio {
    box-shadow: none;
    cursor: pointer;
    width: 24px;
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