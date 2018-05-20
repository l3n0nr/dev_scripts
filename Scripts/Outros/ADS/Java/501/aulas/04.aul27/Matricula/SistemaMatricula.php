

<meta charset="utf-8">
<form action="SistemaMatricula.php" method="POST">
    <b> Escolha as disciplinas: </b>
    <br>
    <input type="checkbox" name="matricula()" value="progiv"> Programação IV <br>
    <input type="checkbox" name="matricula()" value="seminarios"> Seminarios <br>
    <input type="checkbox" name="matricula()" value="metodologia"> Metodologia Cientifica
    <br>

    <input type="checkbox" name="material()" checked="checked"> Material Didatico
    <br>
    <input type="submit">
</form>

<?php
  //incluindo classe externa
    include ("Matricula.php");

    //criando nova matricula
      $mat = new Matricula();
      $mat-> valorMetodologia = 100;
      $mat-> valorSeminarios = 200;
      $mat-> valorProgiv = 1000;

    //verificando valores  digitados pela usuario
      if (isset($_POST["matricula"]) && isset($_POST["material"]))
      {
        $mat -> realizarMatricula($_POST["matricula"], true);
        $mat -> calcularMatricula();
        $mat -> mostrarInformacoes();
      }
      else if (isset($_POST["matricula"]))
      {
        $mat -> realizarMatricula($_POST["matricula"], false);
        $mat -> calcularMatricula();
        $mat -> mostrarInformacoes();
      }
      else
      {
        echo "<p span style='color:red'> Selecione pelo menos uma disciplina</p>";
      }

 ?>
