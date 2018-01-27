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
    class Quadrado extends ObjetoGrafico
    {
      //criando metodo para desenhar objeto
        public function desenhar()
        {
          //imprimindo imagem
            echo "Quadrado";
            echo "<br>";
            echo '<img src="images/quadrado.png">';
        }
    }
?>
