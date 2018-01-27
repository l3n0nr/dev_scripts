<meta charset="utf-8">
<form action="SistemaOrcamento.php" method="POST">
    <b> Sistema para calculo de orçamento na realização de serviços de um Posto de Gasolina </b>
    <br>
    <br>
    <label>Nome do Cliente:</label>
    <input type="text" name="Tnomecliente">
    <br>
    <br>
    <label> Selecione a marca do seu carro: </label>
    <select name="Sopcoes">
        <option value="fiat"> Fiat </option>
        <option value="volks"> Volks </option>
        <option value="chevrolet"> Chevrolet </option>
    </select>
    <br>
    <br>
    <input type="checkbox" name="servicos[]" value="Ctrocaoleo"> Troca de Oleo <br>
    <input type="checkbox" name="servicos[]" value="Ctrocafilto"> Troca do Filtro <br>
    <input type="checkbox" name="servicos[]" value="Ctrocavelas">
    Troca das Velas<br>
    <input type="checkbox" name="servicos[]" value="Climpezainjecaoeletronica"> Limpeza da Injecao Eletronica
    <br>
    <br>
    <input type="submit" value="Gerar Orçamento">
</form>

<?php
  include ("CalculoOrcamento.php");

  $orc = new CalculoOrcamento();
  if (isset($_POST["Tnomecliente"]) && (isset($_POST["Sopcoes"])) && (isset($_POST["servicos"])))
  {
    $orc->Tnomecliente = $_POST["Tnomecliente"];
    $orc->Sopcoes = $_POST["Sopcoes"];
    $orc-> realizarCalculo($_POST["servicos"]);
    $orc-> mostrarInformacoes();
  }
  else
  {
    echo "Preencha todos os campos, antes de realizar o orcamento";
  }
?>
