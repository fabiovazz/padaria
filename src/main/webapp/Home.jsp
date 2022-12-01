<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Padaria</title>
</head>
<body>
	<div class="content">
		<div class="logo">
			<h1>Bem vindo</h1>
			<img src="./img/bread.png" alt="Pão">
		</div>
		<div class="creates">
			<div>
				<a href="CreateClient.jsp"><button>Cadastrar Cliente</button></a>
				<a href="CreateOrder.jsp"><button>Cadastrar Pedido</button></a>
				<a href="CreateProduct.jsp"><button>Cadastrar Produto</button></a>
			</div>
			
			<div>
				<p>Relatórios:</p>
				<a href="CreateClient.jsp"><button>Clientes</button></a>
				<a href="CreateOrder.jsp"><button>Pedidos</button></a>
				<a href="CreateProduct.jsp"><button>Produtos</button></a>
			</div>
		</div>
	</div>
</body>
</html>
<style>

	button{
		width: 150px;
		height: 50px;
		background-color: #ffff;
		border-color: #79e1ee;
		border-radius: 10px;
		font-weight: bold;
		
	}
	button:hover{
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
	    display: flex;
	    align-items: center;
	    justify-content: center;
	}

	h1{
		font-size: 50px;
		color: #333;
		font-family: monospace;
		margin: 0;
	}
	
	img{
		max-width:200px;
	    max-height:150px;
	    width: auto;
	    height: auto;
	}
	
	.creates{
		display:flex;
		flex-direction: column;
	}
	
	.content{
		display: flex;
	    flex-direction: column;
	    align-items: center;
	    justify-content: space-around;
		height: 600px;
	}
	
	.logo{
		background-image: url("./img/prato.png");
		background-repeat: no-repeat;
		background-position: center;
		background-size: 400px 400px; 
		width: 400px;
		height: 400px;
	    display: flex;
	    flex-direction: column;
	    align-items: center;
	    justify-content: center;
	}
</style>