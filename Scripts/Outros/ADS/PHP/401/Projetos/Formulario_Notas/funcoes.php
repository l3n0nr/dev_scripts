<?php

//declarando funcao calcula_media
function calcula_media($nota1, $nota2, $nota3)
{
  $soma = ($nota1 +  $nota2 + $nota3);
  $media = ($soma/3);
  return $media;
}

//declarando funcao situacao_aluno
function situacao_aluno($media , $nome)
{
  if ($media >= 7)
  {
    $situacao_aluno = $nome." parabens. Você está aprovado por media!";
  }
  elseif ($media >= 1.6)
  {
    $situacao_aluno = $nome." você ainda tem uma chance, terá que passar no exame!";
  }
  else
  {
    $situacao_aluno = $nome." sinto muito, mas você foi reprovado!";
  }

  return $situacao_aluno;
}
 ?>
