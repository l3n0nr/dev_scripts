<?php
  class CalculoOrcamento
  {
    //declarando variaveis
      public $Tnomecliente;
      public $Sopcoes;
      public $Ctrocaoleo, $Ctrocafiltro, $Ctrocavelas, $Climpezainjecaoeletronica;

      public $orcamento;
      private $servicos;
      private $opcoes;

    public function realizarCalculo($s)
    {
      $this->servicos = $s;
      //selecionando marcas

      //selecionando servicos
        //fiat
        if ($this->Sopcoes == "fiat")
        {
          $this->orcamento = 10;
          //percorrendo todo o vetor
            foreach ($this->servicos as $serv)
            {
              if ($serv == "Ctrocaoleo")
              {
                $this->orcamento += 1;
              }
              elseif ($serv == "Ctrocavelas")
              {

              }
              elseif ($serv == "Ctrocafiltro")
              {

              }
              elseif ($serv == "Climpezainjecaoeletronica")
              {

              }
              else
              {
                $this->orcamento += 0;
              }
            }
        }
        //volks
          elseif ($this->Sopcoes == "volks")
          {
            $this->orcamento = "12";

          }
        //chevrolet
          elseif ($this->Sopcoes == "chevrolet")
          {
            $this->orcamento = "15";

          }
        //erro
          else
          {
            $this->orcamento += "erroMarcaServicos";
          }

    }

    public function mostrarInformacoes()
    {
      echo "Orçamento: ".$this->orcamento;

    }
  }
 ?>
