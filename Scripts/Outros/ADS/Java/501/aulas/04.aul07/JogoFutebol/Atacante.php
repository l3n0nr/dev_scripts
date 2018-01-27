<?php
  //criando metodo abstrato
    abstract class Atacante
    {
      //criando atributos
        public $nome, $posX, $posY, $altura, $forca, $velocidade;

      //criando funcao para mostrar as informacoes
        public function mostrarInformacoes()
        {
          //mostrando valores
            echo "Nome: ".$this->nome
                 ." Posicao X: ".$this->posX
                 ." Posicao Y: ".$this->posY
                 ." Altura: ".$this->altura
                 ." Força: ".$this->forca
                 ." Velocidade: ".$this->velocidade;
        }

      //criando metodo "driblar" de forma abstrata
        public abstract function driblar();  
    }
?>
