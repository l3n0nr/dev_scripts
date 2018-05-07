<?php
  /*create by lenonr*/

  /*
    Crie a classe ObjetoGrafico que representa a generalização
    de qualquer objeto gráfico e assim tem os atributos posição x, posição y
    e o método desenhar(), o qual nesta classe geral tem corpo vazio.

    Crie as Classes Retangulo, Circulo, Triangulo e Quadrado as quais
    herdam de ObjetoGrafico e sobrescrevem o método desenhar exibindo uma imagem
    na tela de acordo com o tipo de forma.

    Utilize echo '<img src="imagem.jpg">' para mostrar a imagem.
  */

  //criando classe
  class ObjetoGrafico
  {
    //criando atributos
      public $posicaox =0;
      public $posicaoy =0;

    //criando metodo para desenhar para ser usado pelos outros objetos
      function desenhar(){}
  }

?>
