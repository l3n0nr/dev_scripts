
import java.util.ArrayList;


public class Empresa {
    String Nome;
    String Cnpj;
    ArrayList <Funcionario> funcionarios;
    
    
    Empresa(String Nome, String Cnpj)
    {
        this.Nome = Nome;
        this.Cnpj = Cnpj;
        funcionarios = new ArrayList<>();
    }
    
    void Adicionar_Funcionario(Funcionario f)
    {
        funcionarios.add(f);//adiciona um funcionario(objeto)
        System.out.println("\n" + f.Nome+ " cadastrado com sucesso! \n");
    }
    
    void Remover_Funcionario(Funcionario f)
    {
        funcionarios.remove(f);//remove um funcionario(objeto)
        System.out.println("\n" + f.Nome + " removido com sucesso! \n");
    }
    
    void Mostrar_Funcionarios()
    {
        for (int i = 0;/*mostra o tamanho da array funcionario*/ i < funcionarios.size(); i++)
        {
            System.out.println("Nome: " + funcionarios.get(i).Nome);
            System.out.println("Salario: " + funcionarios.get(i).Salario);
            System.out.println("Cargo: " + funcionarios.get(i).Cargo);
        }
        
    }
    
    
}
