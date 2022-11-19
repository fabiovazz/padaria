<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastrar Cliente</title>
</head>
<body>

		<h1>Cadastro de Cliente</h1>
		
		<form action="ServletClient" method="post">
		<label>Nome</label>
		<input type="text" name="name" required>
		<label>E-mail</label>
		<input type="email" name="email" required>
		<label>Telefone</label>
		<input type="tel" name="phone" required>
		<button type="submit">Cadastrar</button>
		</form>
</body>
</html>