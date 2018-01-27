<?php
  //incluindo classe externa
    include("Funcionario.php");

  //criando novo Funcionario
    $f = new Funcionario();
    $f1 = new Funcionario();
    $f2 = new Funcionario();

    //atributo estatico que sera usado em todos os funcionarios
      Funcionario :: $valeRefeicao = 30;

      //criando atributos funcionario 1
        $f->nome = "fulano";
        $f->salario = 100;

        //imprimindo valores funcionario 1
          echo "Nome do funcionario 1: ". $f->nome;
          echo "<br>";

          echo "Valor do seu salario: " . $f->salario;
          echo "<br>";

          //echo "Valor do vale refeição: ". Funcionario::valeRefeicao;
          echo "Valor do vale refeicao: " .Funcionario::$valeRefeicao;
          echo "<br>";
      echo "<br>";
      echo "<br>";

      //criando atributos funcionario 2
        $f->nome = "seclano";
        $f->salario = 1000;

        //imprimindo valores funcionario 2
          echo "Nome do funcionario 2: ". $f->nome;
          echo "<br>";

          echo "Valor do seu salario: " . $f->salario;
          echo "<br>";

          echo "Valor do vale refeição: ".Funcionario::$valeRefeicao;
          echo "<br>";
      echo "<br>";
      echo "<br>";

      //criando atributos funcionario 3
        $f->nome = "outro";
        $f->salario = 2000;

        //imprimindo valores funcionario 2
          echo "Nome do funcionario 3: ". $f->nome;
          echo "<br>";

          echo "Valor do seu salario: " . $f->salario;
          echo "<br>";

          echo "Valor do vale refeição: ".Funcionario::$valeRefeicao;
          echo "<br>";
      echo "<br>";
      echo "<br>";
?>
