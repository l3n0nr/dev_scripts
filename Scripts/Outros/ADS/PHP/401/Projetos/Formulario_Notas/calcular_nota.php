<?php

  //incluindo funcao
  include 'funcoes.php';

  //armazenando em variáveis
  $nome = $_POST["nome"];
  $nota1 = $_POST["nota1"];
  $nota2 = $_POST["nota2"];
  $nota3 = $_POST["nota3"];

  $media = calcula_media($nota1,$nota2,$nota3);

  $situacao = situacao_aluno($media, $nome);
  echo "<h1>".$situacao."</h1>";

?>
