<?php
  //criando class com herança da classe ContatoBasico
    class ContatoCompleto extends ContatoBasico
    {
      //criando atributos
        public $cpf, $email, $cep;

      //
        function __construct ($nome, $endereco, $telefone, $cpf, $email, $cep)
        {
            //herdando valores da classe mae
              parent ::__construct($nome, $endereco, $telefone);

              //indexado valores
                $this-> $cpf = $cpf;
                $this-> $email = $email;
                $this-> $cep = $cep;
        }

        //imprimindo os valores automaticamente
          public function __toString()
          {
            return parent ::__toString(). "Cpf: ".$this->cpf. "Email: ".$this->email. "CEP: ".$this->cep;
          }
    }

?>
