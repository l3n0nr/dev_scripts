<?php

/*
  Crie a classe Pessoa que n�o pode ser instanciada, sendo apenas para
  abstra��o geral. Esta classe tem atributos nome, endereco, telefone.
  Esta classe tem um comportamento mostrarInforma��es que retorna uma string com os atributos e valores.
  Esta classe tem um m�todo abstrato calcularContribuicaoGoverno.

  Crie a classe PessoaFisica que herda os atributos de Pessoa
  e al�m disso tem cpf, sexo, renda. Esta classe realiza a implementa��o
  do m�todo abstrato de calculo de contribui��o da seguinte forma:
  renda at� 2000 = 5% da renda
  renda at� 3000 = 10% da renda
  renda acima 3000 = 15% da renda

  Sobrescreva o m�todo mostrarInforma��es e adicione as informa��es adicionais desta classe.

  Crie a classe PessoaJuridica que herda os atributos de Pessoa
  e al�m disso tem cnpj, ramo de Atividade e faturamento.
  Esta classe realiza a implementa��o
  do m�todo abstrato de calculo de contribui��o da seguinte forma:
  faturamento at� 20000 = 8% do faturamento
  faturamento at� 50000 = 12% do faturamento
  faturamento acima de 50000 = 15% do faturamento
  Sobrescreva o m�todo mostrarInforma��es e adicione as informa��es adicionais desta classe.

  Crie a classe SistemaDeCadastro e instancie duas pessoas jur�dicas e duas pessoas f�sicas.

  Mande mostrar suas informa��es b�sicas e valores de contribui��o.

*/

//extendendo classe Pessoa
  class PessoaJuridica extends Pessoa
  {
    //criando atributos
      public $cnpj, $ramoAtividade, $faturamento;

    //criando metodo abstrato para mostrarInformacoes
      function calcularContribuicaoGoverno()
      {
        //calculando faturamento
          //faturamento de 8%
          if ($this->faturamento <= 20000)
          {
            //realizando calculo
              $this->faturamento += $this->faturamento*0.8;
          }
          else
            //faturamento de 12%
              if ($this->faturamento < 20000 and $this->faturamento >= 50000)
              {
                //realizando calculo
                  $this->faturamento += $this->faturamento*0.12;
              }
          else
            //faturamento de 15%
              {
                $this->faturamento += $this->faturamento*0.15;
              }

            //retornando valor
              return $this->faturamento;
      }

    //criando metodo para mostrar as informacoes
      public function mostrarInformacoes()
      {
        //mostrando valores, e acrescentando outras informacoes
          return parent::mostrarInformacoes()
                        ." Cnpj: ".$this->cnpj
                        ." Ramo de Atividade: ".$this->ramoAtividade
                        ." Renda: ".$this->faturamento;
      }
  }
?>
