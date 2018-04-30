<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Clinica Cândido Torres</title>
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat+Alternates">
	<link rel="stylesheet" type="text/css" href="../css/style.css">
	<link rel="stylesheet" type="text/css" href="../css/login.css">
	<link href="https://fonts.googleapis.com/css?family=Raleway:600" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<script src="../js/jquery-3.2.1.js"></script>
	<script src="../js/login.js"></script>
</head>
<body ondragstart="return false;">
	<header id="topo">
	<input type="checkbox" id="bt_menu">
	<label for="bt_menu">&#9776;</label>
	<div id="right"><img src="../img/cct.png"></div>
	<nav class="menu">
		<ul>
			<li><a href="Index.php">Inicio</a></li>
			<li><a href="#">Cadastro</a>
				<ul>
					<li><a href="TelaCadastroUsuario.php">Usuário</a></li>
					<li><a href="#">Médico</a></li>
					<li><a href="TelaCadastroPaciente">Paciente</a></li>
					<li><a href="#">Funcionário</a></li>
					<li><a href="#">Cidade</a></li>
					<li><a href="#">Especialização</a></li>
				</ul>
			</li>
			<li><a href="#">Relatório</a></li>
			<li><a href="#">Contato</a></li>
		</ul>
	</nav>
	</header>
	<div class="container-login">
    <img src="../img/logo.png">
    <form action="../Login/autenticarUsuario.php" method="POST">
      <div class="form-input">
        <input type="text" name="username" placeholder="Usuário">
      </div>
      <div class="form-input">
        <input type="password" name="password" placeholder="Senha">
      </div>
        <input type="submit" name="submit" value="LOGIN" class="btn-login">
    </form>
     <a href="#">Esqueceu sua senha?</a>
  </div>
  <div class="centro">
  	<div class="conteudo"></div>
  </div>
<footer>
  	<h1>Copyright &copy 2018 - Fábrica de Software</h1>
</footer>
</body>
</html>