<?php
  $login = $_POST["login"];
  $senha = $_POST["senha"];

  if ($login =="usu" && $senha =="123")
  {
    //echo "Usuário cadastro, agora você pode acessar o sistema";
    session_start();
    $_SESSION["usuario"]=$login;
    $_SESSION["senha"]="$senha";
    $_SESSION["valor"]="teste";
    header("location:pagina1.php");
  }
  else
  {
    #iniciando sessao
    #para garantir que nenhuma sessao seja mantida aberta
    session_start();
    #destruindo sessao
    session_destroy();
    #definindo pagina de redirecionamento
    header("location: index.php");
  }
 ?>
