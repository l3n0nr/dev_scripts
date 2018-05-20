<meta charset="utf-8">
<form action="SistCalcOrc.php" method="POST">
  <b> Calculando orçamento </b>
  <br>
  <br>
  <label> Nome do Cliente: </label>
  <input type="text" name="nomeCliente">
  <br>
  <br>
  <label> Selecione a marca do carro </label>
  <select name="opcoes">
    <option value="fiat"> Fiat </option>
    <option value="volks"> Volks </option>
    <option value="chevrolet"> Chevrolet </option>
  </select>
  <br>
  <br>
  <input type="checkbox" name="calorc()" value="trocaoleo"> Troca de Oleo
  <br>
  <input type="checkbox" name="calorc()" value="trocafiltro"> Troca de Filtro
  <br>
  <input type="checkbox" name="calorc()" value="trocavelas"> Troca de Velas
  <br>
  <br>
  <input type="submit" value="Gerar Orçamento">
</form>

<?php
    include ("CalcOrc.php");

    $calcorc = new CalcOrc();
    if (isset($POST["nomecliente"]))
    {
      $calcorc-> nomecliente = $_POST["nomecliente"];
      $calcorc-> $opcoes = $_POST["opcoes"];
      
      $calcorc -> realizarCalculo($_POST["orcamento"]);
      $calcorc -> mostrarInformacoes();
    }
?>
