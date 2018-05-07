<?php

  /*
    Modele a Classe Funcionário. Ela deve ter o nome do funcionário, o departamento onde trabalha, seu salário,
    seu RG e um valor booleano que indique se o funcionário está na empresa ou se já foi demitido.
    Crie um método bonifica que aumenta o salario (em percentual) do funcionário de acordo
    com o parâmetro passado como argumento. Crie também um método demite,
    que idica que o funcionário não trabalha mais na empresa.
    Instancie três funcionários com departamentos e salários diferentes.
    Atribua bonificações diferentes para cada um dos funcionários.
    Demita dois dos funcionários instanciados.
  */

  class Funcionario
  {
    #criando atributos
      #entradas
        public $nome;
        public $setor;
        public $salario;
        public $rg;
        public $estado; #ativado(ainda é funcionario da empresa) ou desativado(já foi demitido)

      #internos
        public $bonificação;

    #criando metodos
      #funcao aumenta o salario
        function aumenta_salario($bonificação)
        {
          #verificando se funcionario trabalha na empresa
            if ($this->estado = true)
            {
                $this->salario += $bonificação;
            }
            else
            {
                echo "Não é possivel aumentar o salario de um funcionario que nao trabalha na empresa";
            }
        }

      #funcao demite o funcionario
        function demite()
        {
          #verificando se funcionario trabalha na empresa
            if ($this->estado = true)
            {
                $this->estado == false;
            }
            else
            {
                echo "Este funcionario ja foi demitido";
            }
        }

      #funcao mostrar valores
        function mostrar_valores()
        {
          #mostrando caracteristicas
            echo "O nome desse funcionario é ". $this->nome;
            echo "O setor que ele trabalha é o ".$this->setor;
            echo "Seu salario, esta na base de ".$this->salario;
            echo "O numero do seu RG é ".$this->rg;
            echo "E atualmente ele esta ".$this->estado." na empresa";
        }
  }

?>
