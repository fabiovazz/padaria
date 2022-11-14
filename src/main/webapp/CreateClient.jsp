<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastrar cliente</title>
</head>
<body>
		<h1>Cadastro de Cliente</h1>
		
		<form action="" method="post">
		<label>Nome</label>
		<input type="text" name="name" required>
		<label>E-mail</label>
		<input type="email" name="email"  required >
		<label>Telefone</label>
		<input type="number" name="phone" required >
		<button type="submit">Cadastrar</button>
		</form>
</body>
</html>