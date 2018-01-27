<?php

  /*create by lenonr*/

  /*
    Fazer carro com comportamentos internos que são chamados na inicialização.
    -print "injecao iniciada"
    -print "motor ativado"
    atributos obrigatorios modelo, placa.
  */

  class Carro
  {
    #criando atributos
      public $modelo, $placa;

    #construtor
      function __construct($modelo, $placa)
      {
        #enviando dados
          $this->modelo = $modelo;
          $this->placa = $placa;
          $this->ini_motor();
          $this->ini_injecao();
      }

      #instanciando funcao para ligar motor
      function ini_motor()
      {
        #iniciando injecao
          echo "Motor ligado";
      }

    #instanciando funcao para iniciar injecao eletronica
      function ini_injecao()
      {
        #iniciando injecao
          echo "Injecao eletronica iniciada";
      }

    #mostrando valores
      function mostrarInformacoes()
      {
        #definindo troca de valores
          $informacoes = "Modelo: " .$this->modelo ." Placa: " .$this->placa;

          #retornando informações
            return $informacoes;
      }
  }
?>
