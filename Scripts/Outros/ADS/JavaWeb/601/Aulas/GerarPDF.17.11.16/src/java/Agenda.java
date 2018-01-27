
import com.lowagie.text.BadElementException;
import com.lowagie.text.Document;
import com.lowagie.text.DocumentException;
import com.lowagie.text.Element;
import com.lowagie.text.FontFactory;
import com.lowagie.text.PageSize;
import com.lowagie.text.Paragraph;
import com.lowagie.text.Phrase;
import java.awt.Color;
import java.awt.Font;
import java.io.IOException;
import java.util.ArrayList;
import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author andre-santana
 */
@ManagedBean
public class Agenda 
{
    ArrayList <Contato> contatos;
    
    @PostConstruct
    public void init()
    {
        contatos = new ArrayList<>();
        Contato c1 = new Contato();
            c1.setNome("Joao");
            c1.setIdade(10);
            c1.setRenda(0.0);
            
        Contato c2 = new Contato();
            c2.setNome("Maria");
            c2.setIdade(12);
            c2.setRenda(1000.0);      
            
        contatos.add(c1);
        contatos.add(c2);
    }

    public void setContatos(ArrayList<Contato> contatos) {
        this.contatos = contatos;
    }

    public ArrayList<Contato> getContatos() {
        return contatos;
    }
    
    public void preparaPDF(Object document) throws
            IOException, BadElementException, DocumentException
    {
        //criando novo pdf
            Document pdf = (Document) document;
        
        //abrindo documento
            pdf.open();
            
        //modificando caracteristicas do documento
            pdf.setPageSize(PageSize.A4);
            
//        //VERSAO FUNCIONAL    
//        //criando paragrafo no texto
//            Paragraph p = new Paragraph("Relatório Contatos",            
//            //editando configuracoes de fontes do texto
//            FontFactory.getFont(FontFactory.COURIER, 14, Font.BOLD, new Color(255,150,255)));
//            
//        //definindo alinhamento
//            p.setAlignment(Element.ALIGN_CENTER);
//        
//        //adiciona as modificações ao documento
//            pdf.add(p);
        
        //VERSAO CORRETA
            Paragraph p = new Paragraph();
            p.setFont(FontFactory.getFont(FontFactory.COURIER,14,Font.BOLD, new Color(255,255,0)));
            p.add(new Phrase("Relatório Contatos"));
            p.setAlignment(Element.ALIGN_CENTER);
            pdf.add(p);
    }
}
