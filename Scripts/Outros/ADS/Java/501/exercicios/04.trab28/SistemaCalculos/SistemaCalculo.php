
<meta charset="utf-8">
<form action="SistemaCalculo.php" method="POST">
    <b> Calculadora </b>
    <br>
    <br>
    <label>Primeiro numero</label>
    <br>
    <input type="text" name="num1">
    <br>
    <br>
    <label>Operação</label>
    <br>
    <select name="op">
        <option value="+"> Somar </option>
        <option value="-"> Subtrair </option>
        <option value="*"> Multiplicar </option>
        <option value="/"> Dividir </option>
    </select>
    <br>
    <br>
    <label>Segundo numero</label>
    <br>
    <input type="text" name="num2">
    <br>
    <br>
    <input type="submit">
</form>

<?php
  include("Calculos.php");

  $cal = new Calculos();

  if (isset($_POST["num1"]) && isset($_POST["num2"]))
  {
    if (is_numeric($_POST["num1"]) && is_numeric($_POST["num2"]))
    {
      $cal->num1 = $_POST["num1"];
      $cal->op = $_POST["op"];
      $cal->num2 = $_POST["num2"];      
      $cal -> mostrarInformacoes();
    }
    else
    {
      echo "digite APENAS numeros!";
    }
  }
  else
  {
      echo "Campos vazios!";
  }


?>
