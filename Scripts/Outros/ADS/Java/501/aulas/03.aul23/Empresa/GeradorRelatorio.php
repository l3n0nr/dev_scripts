<?php
  //criando classe GerarRelatorio
    class GeradorRelatorio
    {
      //criando funcao para mostrar informaçoes
        public function imprimir(Funcionario $f)
        {
          //mostrando informações de determinado funcionario
            echo $f->mostrarInformacoes() . " <br> ";
        }
    }
?>
