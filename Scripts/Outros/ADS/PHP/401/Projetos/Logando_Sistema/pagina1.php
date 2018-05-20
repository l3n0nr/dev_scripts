<?php
  include 'valida_sessao.php';
?>

<html>
  <head>
    <meta charset="utf-8">
    <title> </title>
  </head>
  <body>
    <?php
      echo 'login: '.$_SESSION["usuario"]."<br>";
      echo 'senha: '.$_SESSION["senha"]."<br>";
      echo 'valor: '.$_SESSION["valor"]."<br>";
      print_r($_SESSION);
    ?>
      <form name="f1" method="post" action="valida_usuario.php">
        <input type="submit" value="Logoff">
      <br>
  </body>
</html>
