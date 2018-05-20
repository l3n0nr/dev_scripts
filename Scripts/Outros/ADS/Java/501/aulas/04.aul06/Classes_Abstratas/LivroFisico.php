<?php
  //criando classe LivroFisico
  //extendo classe Livro
    class LivroFisico extends Livro
    {
      //funcao para calcular a taxa de impressao
        function calcularTaxaImpressao()
        {
          //realizando calculo
            $this -> preco += $this -> preco * 0.10;
        }
    }
?>
