<?php
  //criando classe
    class Contato
    {
      //criando atributos
        public $nome,$endereco, $idade, $renda, $imposto, $regiao;

      //criando funcao para calcular imposto
        public function calcularImposto()
        {
          //regializando calculo por regiao
            if ($this -> regiao == "sul")
            {
              //realizando calculo
                $this -> imposto = $this-> renda * 0.10;
            }
            else if ($this -> regiao == "oeste")
            {
              //realizando calculo
                $this -> imposto = $this -> renda * 0.15;
            }
            else if ($this -> regiao == "leste")
            {
              //realizando calculo
                $this -> imposto = $this -> renda * 0.20;
            }
            else if ($this -> regiao == "norte")
            {
              //realizando calculo
                $this -> imposto = $this -> renda * 0.25;
            }
        }

      //criando classe para mostrarInformacoes
        public function mostrarInformacoes()
        {
          //mostrando valores
            echo "Nome: " .$this->nome.
                 "Endereco: " .$this->endereco.
                 "Idade: " .$this->idade.
                 "Renda: " .$this->renda.
                 "Regiao: " .$this->regiao.
                 "Imposto: ".$this->imposto;
        }
    }

?>
