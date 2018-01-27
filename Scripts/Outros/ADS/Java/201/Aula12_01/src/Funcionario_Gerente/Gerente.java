package Funcionario_Gerente;

/**
 *
 * @author lenonr
 * 
 */
public class Gerente extends Funcionario {
    
    int senha;
    int numeroFuncionarioGerenciados;
    
    /*
    *   Metodo sobreescrito(reescrito, override)
    *   O Metodo sobreescrito prevalece sobre o da classe mae.
    */
    
    public double getBonificacao()
    {
        return super.getBonificacao() + 1000;
    }
    
    public String toString()
    {
        return super.toString() + " Senha: " + senha + ", Numero de Funcionarios Gereciados por esse gerente: " + numeroFuncionarioGerenciados + "."; 
    }
    
}
