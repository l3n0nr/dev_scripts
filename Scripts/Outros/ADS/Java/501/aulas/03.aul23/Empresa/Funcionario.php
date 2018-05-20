<?php
  //criando classe funcionario
    class Funcionario
    {
      //criando atributos
        public $nome, $cpf, $salario;

      //criando funcao mostrar dados
        public function mostrarInformacoes()
        {
          //retornando valores
            return " Nome: ".$this->nome ." Cpf: ".$this->cpf ." Salario: ".$this->salario;
        }
    }

?>
