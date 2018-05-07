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

//incluindo arquivos externos
  include("Pessoa.php");
  include("PessoaFisica.php");
  include("PessoaJuridica.php");

//criando pessoas
  $p_f01 = new PessoaFisica();
  $p_j01 = new PessoaJuridica();

//definindo atributos
  //pessoa fisica
    $p_f01 -> nome = "Lenon";
    $p_f01 -> endereco = "Passo Novo";
    $p_f01 -> telefone = "Não tenho, sou pobre";
    $p_f01 -> cpf = "000-000-000-23";
    $p_f01 -> sexo = "M";
    $p_f01 -> renda = 1;

  //pessoa juridica
    $p_j01 -> nome = "Ricardo Ltda.";
    $p_j01 -> endereco = "Passo Novo";
    $p_j01 -> telefone = "Só por Pombo Correio";
    $p_j01 -> cnpj = "000-111-222-33";
    $p_j01 -> ramoAtividade = "Tecnologia";
    $p_j01 -> faturamento = 99;

  echo "Primeiro teste";
  echo "<hr>";
  //mostrando informacoes
  echo $p_f01 -> mostrarInformacoes();
    echo "<br>";
    echo "<br>";
  echo $p_j01 -> mostrarInformacoes();
    echo "<br>";
    echo "<br>";
    echo "<br>";

  //realizando calculos da Contribuicao do Governo
  echo $p_f01 -> calcularContribuicaoGoverno();
  echo $p_j01 -> calcularContribuicaoGoverno();

  echo "Segundo teste";
  echo "<hr>";
  //mostrando informacoes
  $p_f01 -> mostrarInformacoes();
    echo "<br>";
    echo "<br>";
  $p_j01 -> mostrarInformacoes();
    echo "<br>";
    echo "<br>";

?>
