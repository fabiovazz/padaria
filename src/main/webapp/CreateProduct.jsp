<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastrar produto</title>
	<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class="align">
	<h1>Cadastro de produto</h1>

	<form action="ServletProduct" method="post" class="contactForm">
		<div class="row">
			<label>Nome</label> 
			<input type="text" name="name" required>
			<label>Descri��o</label> 
			<input type="text" name="description"
				required> 
				<label>Preco</label> 
				<input type="number"
				min="0.00" max="10000.00" step	="0.01" name="price" required>
			<button class="btn-btn-primary" type="submit">Cadastrar</button>
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