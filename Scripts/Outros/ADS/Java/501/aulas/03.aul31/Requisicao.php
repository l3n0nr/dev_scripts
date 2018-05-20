<?php
  //criando classe requisicao
    class Requisicao
    {
      //criando variavel estavel
        static $count=0;
      
      //criando variaveis 
        public $texto, $remetente;
        
      //criando construtor
        function __construct($remetente, $texto)
        {
          //direcionando valores para as variaveis
            $this->texto = $texto;
            $this->remetente = $remetente;
            
          //'self' é usado para tornar o contador para uma conta unica
            self::$count++;
        }
    }
?>