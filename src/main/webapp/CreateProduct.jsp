<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastrar produto</title>
</head>
<body>
		<h1>Cadastro de produto</h1>
		
		<form action="ServletProduct" method="post">
		<label>Nome</label>
		<input type="text" name="name" required>
		<label>Descrição</label>
		<input type="text" name="description" required>
		<label>Quantidade</label>
		<input type="number" name="quantity" min="1" required >
		<label>Preco</label>
		<input type="number" min="0.00" max="10000.00" step="0.01" name="price" required >
		<button type="submit">Cadastrar</button>
		</form>
</body>
</html>