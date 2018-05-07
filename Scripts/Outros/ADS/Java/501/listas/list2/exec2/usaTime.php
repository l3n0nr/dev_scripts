<?php
  /*
    Crie a classe Time a qual tem os atributos hora, minuto e segundo.
    Impeça o acesso direto aos atributos.
    Faça os métodos set dos atributos da seguinte forma:
    hora -> só pode ser inteiro, maior ou igual à 0 e menor que 24
    minuto -> só pode ser inteiro, maior ou igual à 0 e menor que 60
    segundo -> só pode ser inteiro, maior ou igual à 0 e menor que 60
    Faça os métodos get para retornar o valor dos atributos.
    Crie a classe usaTime e instancie 2 horários válidos e 2 inválidos.
    Mostre os valores com o echo.
  */

    #incluindo arquivo
      include ("Time.php");

    #criando horarios
      $t = new Time;
      $t1 = new Time;
      $t2 = new Time;
      $t3 = new Time;

      echo "<b>Possiveis erros</b>";
      echo "<hr>";

    #definindo horarios - forma certa
      $t -> setHora("23");
      $t -> setMinuto("34");
      $t -> setSegundo("20");

      $t1 -> setHora("20");
      $t1 -> setMinuto("00");
      $t1 -> setSegundo("2");

    #definindo horarios - forma errada
      $t2 -> setHora(" ");
      $t2 -> setMinuto("2323");
      $t2 -> setSegundo("2000");

      $t3 -> setHora("3324234");
      $t3 -> setMinuto("00234234");
      $t3 -> setSegundo("223432");

      echo "<hr>";
      echo "<b>Hora </b>";
      echo "<br>";

    #imprimindo valores
      #t1
        echo "Hora certa ". $t -> getHora(). ":". $t -> getMinuto(). ":". $t -> getSegundo();
        echo "<br>";
      #t2
        echo "Hora certa ". $t1 -> getHora(). ":". $t1 -> getMinuto(). ":". $t1 -> getSegundo();
        echo "<br>";
      #t3
        echo "Hora certa ". $t2 -> getHora(). ":". $t2 -> getMinuto(). ":". $t2 -> getSegundo();
        echo "<br>";
      #t4
        echo "Hora certa ". $t3 -> getHora(). ":". $t3 -> getMinuto(). ":". $t3 -> getSegundo();
        echo "<br>";
?>
