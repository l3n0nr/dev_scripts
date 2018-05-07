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

//criando classe abstrata
  abstract class Pessoa
  {
    //criando atributos
      public $nome, $endereco, $telefone;

    //criando metodo abstrato
      //public abstract function calcularContribuicaoGoverno();

    //criando funcao para mostrar as informacoes
      function mostrarInformacoes()
      {
        //mostrando informacoes
          echo "Nome: ".$this->nome ." Endereco: ".$this->endereco ." Telefone: ".$this->telefone;
      }
  }
?>
