<?php

  /*
    Classe: Porta. Atributos: aberta (sim ou não), cor, largura, altura.
    Métodos: abre(), fecha(), boolean "estaAberta()" --> "verifica_estado()".
    Instancie três portas, abra e feche as mesmas e depois imprima as informações de cada porta.
  */

  class porta
  {
    #criando atributos
      public $est;    #aberta(true) ou fechada(false)
      public $cor;
      public $largura;
      public $altura;

    #criando metodos
    #abrir a porta
      function abrir()
      {
        #verificando se porta esta aberta, caso não esteja ABRIR.
          if ($this->est = true)
          {
            #não é necessario abrir a porta
              echo "Não é necessário abrir, a porta já esta ABERTA!";
          }
          #porta não esta aberta
            else
            {
              #abrindo a porta
                $this-> est == true;
            }
      }

    #fechar a porta
      function fechar()
      {
        #verificando se porta esta fechada, caso não esteja FECHAR.
          if ($this->est = false)
          {
            #não é necessario fechar a porta
              echo "Não é necessário fechar, a porta já esta FECHADA!";
          }
          #porta não esta fechada
            else
            {
              #fechando a porta
                $this-> est = false;
            }
      }

    #estado da porta
      function verifica()
      {
        if ($this->est = false)
        {
          #mostrando o estado da porta
            echo "A porta esta fechada";
        }
        else
        {
          #mostrando o estado da porta
            echo "A porta esta aberta";
        }
      }
  }
?>
