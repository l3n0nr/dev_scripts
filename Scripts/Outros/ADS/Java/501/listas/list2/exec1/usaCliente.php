<?php

  /*
    Crie a classe Cliente com os atributos nome, idade, sexo.
    Impeça o acesso direto aos atributos.
    Faça os métodos set dos atributos da seguinte forma:
    nome -> só pode ser string e comprimento maior que 2;
    idade -> so pode ser inteiro e maior que 18
    sexo -> só pode ser masculino ou feminino.
    Faça os métodos get para retornar o valor dos atributos.
    Crie a classe usa Produto e instancie 2 clientes válidos e 2 inválidos.
    Mostre os valores com o echo.
  */

    #incluindo arquivo
      include ("Cliente.php");

      #criando clientes
        $c = new Cliente;
        $c1 = new Cliente;
        $c2 = new Cliente;
        $c3 = new Cliente;

        echo "<b>Possiveis erros</b>";
        echo "<hr>";

      #definindo clientes da forma correta
        $c -> setNome("Lenon");
        $c -> setSexo("m");
        $c -> setIdade(18);

        $c1 -> setNome("Ana");
        $c1 -> setSexo("f");
        $c1 -> setIdade(23);

      #definindo clientes da forma errada
        $c2 -> setNome("n");
        $c2 -> setSexo("d");
        $c2 -> setIdade(2);

        $c3 -> setNome("");
        $c3 -> setSexo("");
        $c3 -> setIdade("");

      echo "<hr>";
      echo "<b>Usuários cadastrados</b>";
      echo "<br>";

      #imprimindo valores - cliente
        echo "<br>Nome: " . $c -> getNome();
        echo "<br>Sexo: " . $c -> getSexo();
        echo "<br>Idade: ". $c -> getIdade();
        echo "<br>";

      #imprimindo valores - cliente 1
        echo "<br>Nome: " . $c1 -> getNome();
        echo "<br>Sexo: " . $c1 -> getSexo();
        echo "<br>Idade: ". $c1 -> getIdade();
?>
