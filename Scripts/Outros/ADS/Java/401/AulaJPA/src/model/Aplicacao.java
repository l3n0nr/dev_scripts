/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package model;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

/**
 *
 * @author IFFarroupilha
 */
public class Aplicacao 
{
    public static void main(String [] args) throws Exception
    {
        EntityManagerFactory objFactory = Persistence.createEntityManagerFactory("AulaJPAPU");
        objFactory.createEntityManager();
        
        LivroJpaController jpaController = new LivroJpaController(objFactory);
        
        Livro l1 = new Livro();
        l1.setTitulo("Apredendo Java");
        l1.setNumeropaginas(500);
        
        //criando livro no banco de dados
        jpaController.create(l1);
        
        //alterando valor
        l1.setNumeropaginas(700);
        jpaController.edit(l1);
    }    
}
