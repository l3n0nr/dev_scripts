package Funcionario_Gerente;

/**
 *
 * @author lenonr
 * 
 */
public class Testa_Funcionario_Gerente {
    public static void main(String [] args)
    {
        
        /*                                                                      *
        *                   DEFININDO FUNCIONARIOS                              *
        *                                                                       */
        //Criando dados do FUNCIONARIO
        Funcionario F = new Funcionario();
        F.nome = "Lenon";
        F.cpf = "05504512485";
        F.salario = 10000;
        
        //Criando dados do GERENTE
        Gerente G = new Gerente();
        G.nome = "Ricardo";
        G.senha = 1234;
        G.cpf = "45678945855";
        G.salario = 10000; 
        G.numeroFuncionarioGerenciados = 4;
        
        /*                                                                      *
        *                   MOSTRANDO VALORES DA BONIFICAÇÃO                    *
        *                                                                       */
        //Mostrando valor da bonificaçao
        System.out.println(F.getBonificacao());
        
        //Mostrando valor da bonitificação
        System.out.println(G.getBonificacao());
        
        //Mostrando Funcionario
        System.out.println(F);
        
        //Mostrando Gerente
        System.out.println(G);
    }
}
