<?php
  //incluindo classe externa
    include ("Contato.php");

  //criando novo contato
    $cont = new Contato();
?>
<html>
  <body>
    <!--criando formulario-->
      <form method="post" action="SistemaCadastro.php">
        <!--criando campos de entrada-->
          Nome: <input name="nome" value="">
          <br>
          Endereco: <input name="endereco" value="">
          <br>
          Renda: <input name="renda" value="">
          <br>
          Idade: <input name="idade" value="">
          <br>
          <!--criando menu para seleção-->
            <select name="regiao">
                <option value="norte"> Norte </option>
                <option value="sul"> Sul </option>
                <option value="leste"> Leste </option>
                <option value="oeste"> Oeste </option>
            </select>
            <br>
            <br>
          <input type="submit" name="Calcular">
      </form>
  </body>
</html>
<?php
  //realizando comparacoes de acordo com os valores passados
    //verificando se todos os valores foram preenchidos
      if (isset($_POST["regiao"])
       && isset($_POST["nome"])
       && isset($_POST["endereco"])
       && isset($_POST["idade"])
       && isset($_POST["renda"]))
      {
        //verificando se idade e renda, são numericos
          if (is_numeric($_POST["idade"])
           && is_numeric($_POST["renda"]))
           {
              //realizando calculo
                $cont -> nome = $_POST["nome"];
                $cont -> endereco = $_POST["endereco"];
                $cont -> renda = $_POST["renda"];
                $cont -> idade = $_POST["idade"];
                $cont -> regiao = $_POST["regiao"];

              //mostrando calculo, atraves da classe externa
                $cont ->calcularImposto();

              //mostrando resultado
                $cont -> mostrarInformacoes();
           }
           //
           else
           {
              echo "Preencha os campos corretamente";
           }
      }
?>
