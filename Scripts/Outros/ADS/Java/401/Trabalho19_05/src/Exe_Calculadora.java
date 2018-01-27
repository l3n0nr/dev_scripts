
import java.awt.FlowLayout;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.JButton;
import javax.swing.JFrame;
import static javax.swing.JFrame.EXIT_ON_CLOSE;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextField;

/**
 *
 * @author lenonr
 * 
 */

public class Exe_Calculadora extends JPanel
{
    //CRIANDO LABEL SENHA
    private JLabel valor1, valor2, valor_resultado;
    
    //CRIANDO CAMPO PARA SENHA
    private JTextField caixa_valor1,caixa_valor2;
    
    //CRIANDO BOTAO OK e CANCELAR
    private JButton soma,subtracao,multiplicacao,divisao;
    
    //CRIANDO CONSTRUTUTOR DOS OBJETOS
    public Exe_Calculadora()
    {
        valor1 = new JLabel("Digite o primeiro valor");
        valor2 = new JLabel("Digite o segundo valor");
        valor_resultado = new JLabel("Esperando realizar operação...");
        
        caixa_valor1 = new JTextField("",10);
        caixa_valor2 = new JTextField("",10);
        
        soma = new JButton("+");
        subtracao = new JButton("-");
        multiplicacao = new JButton("*");
        divisao = new JButton("/");  
    }
    
    //CRIANDO METODO INIT
    public void init()
    {
        ButtonManipulator bm1 = new ButtonManipulator();
        
        //ADICIONANDO EVENTOS PARA OS BOTOES
        soma.addActionListener(bm1);
        subtracao.addActionListener(bm1);
        multiplicacao.addActionListener(bm1);
        divisao.addActionListener(bm1);
        
        //DEFININDO LAYOUT DA JANELA - 4 LINHAS e 1 COLUNA
        setLayout(new GridLayout(4,1));
        
        //CRIANDO LAYOUT CENTRO
        FlowLayout painel = new FlowLayout();
        
        JPanel p_valor_1 = new JPanel(painel);
        //ADICIONANDO PRIMEIRO PAINEL
        p_valor_1.add(valor1);
        p_valor_1.add(caixa_valor1);
        
        JPanel p_valor_2 = new JPanel(painel);
        p_valor_2.add(valor2);
        p_valor_2.add(caixa_valor2);
        
        //ADICIONANDO SEGUNDO PAINEL
        JPanel painel_resultado = new JPanel(painel); 
        painel_resultado.add(valor_resultado);   
        
        //ADICIONANDO TERCEIRO PAINEL
        JPanel botoes = new JPanel(painel);
        botoes.add(soma);
        botoes.add(subtracao);
        botoes.add(multiplicacao);
        botoes.add(divisao);
        
        //ADICIONANDO PAINEIS A JANELA
        add(p_valor_1);
        add(p_valor_2);
        add(painel_resultado);
        add(botoes);   
    }
    

    //CRIANDO CLASSE INTERNA
    class ButtonManipulator implements ActionListener
    {
        //CRIANDO VARIAVEIS
        int a,b;
        double r;
        
        @Override
        public void actionPerformed(ActionEvent e) 
        {
            //SE PRESSIONADO 'BOTAO SOMA'
            if(e.getSource() == soma)
            {
                //CONVERTENDO VALOR
                a = Integer.parseInt(caixa_valor1.getText());
                b = Integer.parseInt(caixa_valor2.getText());
                r = a+b;
                //MOSTRANDO RESULTADO
                valor_resultado.setText("O resultado da soma de A+B é: " + r);   
            }
            else
            //SE PRESSIONADO 'BOTAO SUBTRACAO'
            if(e.getSource() == subtracao)
            {
                //SE 'A MAIOR DO QUE B'
                if (a>b)
                {
                    //CONVERTENDO VALOR
                    a = Integer.parseInt(caixa_valor1.getText());
                    b = Integer.parseInt(caixa_valor2.getText());
                    r = a-b;
                    //MOSTRANDO RESULTADO
                    valor_resultado.setText("O resultado da subtração de A-B é: " + r);   
                }
                else
                //SE 'A MENOR DO QUE B'
                if (a<b)
                {
                    //CONVERTENDO VALOR
                    a = Integer.parseInt(caixa_valor1.getText());
                    b = Integer.parseInt(caixa_valor2.getText());
                    r = b-a;
                    //MOSTRANDO RESULTADO
                    valor_resultado.setText("O resultado da subtração de B-A é: " + r);   
                }
                //SE VALORES FOREM IGUAIS, REALIZA AÇÃO PADRÃO 'A-B'
                else
                {
                    //CONVERTENDO VALOR
                    a = Integer.parseInt(caixa_valor1.getText());
                    b = Integer.parseInt(caixa_valor2.getText());
                    r = a-b;
                    //MOSTRANDO RESULTADO
                    valor_resultado.setText("O resultado da subtração de A-B é: " + r);   
                }
            }
            else
            //SE PRESSIONADO 'BOTAO MULTIPLICACAO'
            if(e.getSource() == multiplicacao)
            {
                //CONVERTENDO VALOR
                a = Integer.parseInt(caixa_valor1.getText());
                b = Integer.parseInt(caixa_valor2.getText());
                r = a*b;
                //MOSTRANDO RESULTADO
                valor_resultado.setText("O resultado da multiplicação de A*B é: " + r);   
            }
            else
            //SE PRESSIONADO 'BOTAO DIVISÃO'
            if(e.getSource() == divisao)
            {
                //SE 'A MAIOR DO QUE B'
                if (a>b)
                {
                    //CONVERTENDO VALOR
                    a = Integer.parseInt(caixa_valor1.getText());
                    b = Integer.parseInt(caixa_valor2.getText());
                    r = a/b;
                    //MOSTRANDO RESULTADO
                    valor_resultado.setText("O resultado da divisão de A por B é: " + r);   
                }
                else
                //SE 'A MENOR DO QUE B'
                if (a<b)
                {
                    //CONVERTENDO VALOR
                    a = Integer.parseInt(caixa_valor1.getText());
                    b = Integer.parseInt(caixa_valor2.getText());
                    r = b/a;
                    //MOSTRANDO RESULTADO
                    valor_resultado.setText("O resultado da divisão de B por A é: " + r);   
                }
                //SE VALORES FOREM IGUAIS, REALIZA AÇÃO PADRÃO 'A/B'
                else
                {
                    //CONVERTENDO VALOR
                    a = Integer.parseInt(caixa_valor1.getText());
                    b = Integer.parseInt(caixa_valor2.getText());
                    r = a/b;
                    //MOSTRANDO RESULTADO
                    valor_resultado.setText("O resultado da divisão de A por B é: " + r);   
                }
            }
        }
    }

    //CRIANDO METODO PRINCIPAL
    public static void main(String [] args)
    {
        //CRIANDO CLASSE EXEMPLO_TRATAMENTO_TEXTO COM O NOME DE TEXTO
        Exe_Calculadora c = new Exe_Calculadora();
        
        c.init();
        
        //DEFININDO TITULO DA JANELA
        JFrame frame = new JFrame("Calculadora de valores");
        
        frame.getContentPane().add(c);
        
        //AJUSTA O TAMANHO DA JANELA DE ACORDO COM O TAMANHO DO PAINEL DETRO DELE
        frame.pack();
        
        //TORNANDO A JANELA VISIVEL
        frame.setVisible(true);
        
        //FECHANDO JANELA AUTOMATICAMENTE
        frame.setDefaultCloseOperation(EXIT_ON_CLOSE);
    }
}
