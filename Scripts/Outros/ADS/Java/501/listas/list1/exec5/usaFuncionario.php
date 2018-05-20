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

  #incluindo Classe
    include("Funcionario.php");

  #instanciando objetos
    $funcionario = new Funcionario();
    $funcionario2 = new Funcionario();
    $funcionario3 = new Funcionario();

  #definindo valores
    #funcionario
      $funcionario->nome="Lenon";
      $funcionario->setor="Oficina TI";
      $funcionario->salario="baixo";
      $funcionario->rg="12090912";
      $funcionario->estado="trabalhando";

    #funcionario2
      $funcionario2->nome="Ricardo";
      $funcionario2->setor="Oficina TI";
      $funcionario2->salario="baixo";
      $funcionario2->rg="12090912";
      $funcionario2->estado="trabalhando";

    #funcionario3
      $funcionario3->nome="Ricardo";
      $funcionario3->setor="Oficina TI";
      $funcionario3->salario="baixo";
      $funcionario3->rg="0912";
      $funcionario3->estado="trabalhando";

  #demitindo funcionarios
    #funcionario2
      $funcionario2-> demite();

    #funcionario3
      $funcionario3-> demite();

  #dando bonificação
    #funcionario1
      $funcionario-> aumenta_salario("100");

  #mostrando dados
    #funcionario1(UNICO que está trabalhando)
      $funcionario-> mostrar_valores();
?>
