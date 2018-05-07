<?php
  class CalcOrc
  {
    public $nomecliente;
    public $opcoes;
    public $trocaoleo, $trocafiltro, $trocavelas, $limpezainjecao;
    
    public $servicos;
    public $orcamento;
    
    public function realizarCalculo()
    {
      if ($this->opcoes == "fiat")
      {
        $this->orcamento = "100";      
      }
    }
    
    public function mostrarInformacoes()
    {
      echo "Orcamento: ".$this->Orcamento;
    }
  }
?>
