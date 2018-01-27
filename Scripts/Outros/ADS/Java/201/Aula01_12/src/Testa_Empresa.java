
public class Testa_Empresa {
    public static void main (String [] main)
    {
        Empresa E = new Empresa("Razor Informática", "000100101");
        
        //Criando Funcionarios
        Funcionario f = new Funcionario ("Fulano","Programador Java", 400.00);
        Funcionario f1 = new Funcionario ("Seclano","Programador C", 500.00);
        Funcionario f2 = new Funcionario ("Carlos", "Programador Pascal" , 10.00);

        //Cadastrando Funcinarios
        E.Adicionar_Funcionario(f);
        E.Adicionar_Funcionario(f1);
        E.Adicionar_Funcionario(f2);
        
        //Mostrando Funcionarios Disponiveis
        E.Mostrar_Funcionarios();
        
        //Removendo Funcionarios
        E.Remover_Funcionario(f2);
        
        //Mostrando Funcionarios Disponiveis
        E.Mostrar_Funcionarios();
        
    }
}
