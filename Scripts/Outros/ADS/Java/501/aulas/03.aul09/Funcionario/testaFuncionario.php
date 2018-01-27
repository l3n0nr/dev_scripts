<meta charset="utf-8">;

<?php
  #incluindo classe externa
    include ("Funcionario.php");

  #chamando construtor
    #CRIANDO NOVO FUNCIONARIO
      $func = new Funcionario("Lenon", "Rua A", 100);

    #mostrando informações do funcionario 1
      echo "Informações do Funcionario 1 " . $func-> mostrarInformacoes();

    #nova linha
      echo "<br>";

    #CRIANDO UM NOVO FUNCIONARIO
      $func1 = new Funcionario("Ricardo", "Rua B", 300);
      $func1 -> email = "ricardo@gmail.com";

    #mostrando informações do funcionario 1
      echo "Informações do Funcionario 2 " . $func1-> mostrarInformacoes();
?>
