
public class Funcionario {
    String Nome;
    String Cargo;
    double Salario;
    
    Funcionario(String Nome, String Cargo, Double Salario)
    {
        this.Nome = Nome;
        this.Salario = Salario;
        this.Cargo = Cargo;
    }
    
    void Programar(String Sistema)
    {
        System.out.println("Programando o sistema " + Sistema + " em " + this.Cargo);
    }
}
