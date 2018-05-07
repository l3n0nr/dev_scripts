
import java.awt.FlowLayout;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextField;

/**
 *
 * @author lenonr
 * 
 **/

public class Exe1 extends JFrame
{
    //CRIANDO LABEL SENHA
    private JLabel lbltexto;
    
    //CRIANDO CAIXA DE TEXTO
    private JTextField caixa;
     
    //CRIANDO PAINEL
    private JPanel painel,valores;
    
    //CRIANDO LABELS    
    private JLabel 
            
            //CRIANDO LABELS PARA CONTAGEM DAS LETRAS
            a,av,
            b,bv,
            c,cv,
            d,dv,
            e,ev,
            f,fv,
            g,gv,
            h,hv,
            i,iv,
            j,jv,
            k,kv,
            l,lv,
            m,mv,
            n,nv,
            o,ov,
            p,pv,
            q,qv,
            r,rv,
            s,sv,
            t,tv,
            u,uv,
            v,vv,
            x,xv,
            w,wv,
            y,yv,
            z,zv;

    //CRIANDO CONSTRUTOR
    public Exe1()
    {
        lbltexto = new JLabel("Digite uma letra e tecle ENTER");
       
        caixa = new JTextField("",100);

        /*
        int countLetras[23];
        
        for(int i; i<23; i++)
            a.setText("A: " + countA[0]) + b.setText("B: "+countB[1]);
        */
    }
    
    public void init()
    {
        setLayout(new GridLayout(3,1));
        
        //getContentPane().setLayout(new GridLayout(3,1));
        
        //DEFININDO TAMANHO DA JANELA
        setSize(500,400);
        
        //DEFININDO LOCALIZAÇÃO DA JANELA
        setLocation(500,300);
        
        painel = new JPanel();
        painel.add(lbltexto);
        painel.add(caixa);
        
        painel = new JPanel();
        //painel.add(a.setText("A:" + countA[]));
        
        //ADICIONANDO LABEL'S  A JANELA - LETRAS
        /*
            valores.add(a);
            valores.add(av);
            
            valores.add(b);
            valores.add(bv);
            
            valores.add(c);
            valores.add(cv);
            
            valores.add(d);
            valores.add(dv);
            
            valores.add(e);
            valores.add(ev);
            
            valores.add(f);
            valores.add(fv);
            
            valores.add(g);
            valores.add(gv);
            
            valores.add(h);
            valores.add(hv);
            
            valores.add(i);
            valores.add(iv);
            
            valores.add(j);
            valores.add(jv);
            
            valores.add(k);
            valores.add(kv);
            
            valores.add(l);
            valores.add(lv);
            
            valores.add(m);
            valores.add(mv);
            
            valores.add(n);
            valores.add(nv);
            
            valores.add(o);
            valores.add(ov);
            
            valores.add(p);
            valores.add(pv);
            
            valores.add(q);
            valores.add(qv);
            
            valores.add(r);
            valores.add(rv);
            
            valores.add(s);
            valores.add(sv);
            
            valores.add(t);
            valores.add(tv);
            
            valores.add(u);
            valores.add(uv);
            
            valores.add(v);
            valores.add(vv);
            
            valores.add(x);
            valores.add(xv);
            
            valores.add(w);
            valores.add(wv);
            
            valores.add(y);
            valores.add(yv);
            
            valores.add(z);
            valores.add(zv);
        */

        //ADICIONANDO EVENTO A CAIXA DE TEXTO
        caixa.addActionListener(new Exe1.ActionHandler());
        
        //ADICIONAOD PAINEL - Label de Texto e Caixa de Texto
        getContentPane().add(painel);
        
        //ADICIONANDO PAINEL DE LETRAS E VALORES
        getContentPane().add(valores);
        
    }

    private class ActionHandler implements ActionListener
    {
        @Override
        public void actionPerformed(ActionEvent e) 
        {
            //TEXTO RECEBE O VALOR DE TXTSENHA(CAPTURA)
            String texto = caixa.getText();
            
            //REALIZA PROCEDIMENTO COM O VALOR CAPTURADO     
            if (texto.equals("a"))
            {
                System.out.println("teste");
            }
        }
    }

    public static void main (String [] args) 
    {
        //CRIANDO CLASSE EXEMPLO_TRATAMENTO_TEXTO COM O NOME DE TEXTO
        Exe1 et = new Exe1();
        
        et.init();
        
        //DEFININDO TITULO DA JANELA
        JFrame frame = new JFrame("Exemplo tratamento de texto");
        
        frame.getContentPane().add(et);
        
        //AJUSTA O TAMANHO DA JANELA DE ACORDO COM O TAMANHO DO PAINEL DETRO DELE
        frame.pack();
        
        //TORNANDO A JANELA VISIVEL
        frame.setVisible(true);
        
        //FECHANDO JANELA AUTOMATICAMENTE
        frame.setDefaultCloseOperation(EXIT_ON_CLOSE);
    }
    
}

