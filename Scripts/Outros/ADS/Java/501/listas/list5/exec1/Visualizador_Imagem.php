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

  //incluindo classes externas
    include("ObjetoGrafico.php");
    include("Retangulo.php");
    include("Circulo.php");
    include("Quadrado.php");

  //criando classe Retangulo
    $retan = new Retangulo();
      //passando atributos
        $retan -> posicaox = "10";
        $retan -> posicaoy = "10";

  //criando classe Circulo
    $circ = new Circulo();
      //passando atributos
        $circ -> posicaox = "20";
        $circ -> posicaoy = "20";

  //criando classe Quadrado
    $quad = new Quadrado();
      //passando atributos
        $quad -> posicaox = "30";
        $quad -> posicaoy = "30";

  //criando array
    $objGraf[1] = $retan;
    $objGraf[2] = $circ;
    $objGraf[3] = $quad;

  //executando por um determinado tempo
    for ($i=0; $i<3; $i++)
    {
      //captura os valores do array e tranforma em um objeto unico
        foreach ($objGraf as $o)
        {
          //movimentando o carro
            $o -> desenhar();

          //imprimindo nova linha
            echo "<br>";
        }
        echo "<hr>";
    }
?>
