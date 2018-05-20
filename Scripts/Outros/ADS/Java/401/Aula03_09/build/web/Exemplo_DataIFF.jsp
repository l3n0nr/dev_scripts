<%-- 
    Document   : Exemplo_DataIFF
    Created on : 03/09/2015, 21:33:43
    Author     : lenonr
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exemplo_DataIFF</title>
    </head>
    <body>
        <h1>Exemplo_DataIFF</h1>
        <%
            //MOSTRANDO A DATA NA PAGINA
            //out.println(new Date());
            
            //MOSTRANDO DATA FORMADA NA PAGINA
            //out.println((new SimpleDateFormat("dd/MM/yyyy")).format(new Date()));
            //out.println("<br>");
            
            
            //IMPRIMINDO APENAS O DIA DA DATA
            //out.println((new SimpleDateFormat("MM")).format(new Date()));
                        
            //SEPARANDO VALORES            
            int dia = Integer.parseInt((new SimpleDateFormat("dd")).format(new Date()));
            
            int mes = Integer.parseInt((new SimpleDateFormat("MM")).format(new Date()));
            
            int ano = Integer.parseInt((new SimpleDateFormat("yyyy")).format(new Date()));
                                 
            //CRIANDO CONDICAO - DIA
            if (dia == 1)
            {
                out.println("Você está no primeiro dia do mês de");
            } 
            else
            if (dia == 2)
            {
                out.println("Você está no dia 02 do mês de");
            }
            else
            if (dia == 3)
            {
                out.println("Você está no dia 03 do mês de");
            }
            else
            if (dia == 4)
            {
                out.println("Você está no dia 04 do mês de");
            }
            else
            if (dia == 5)
            {
                out.println("Você está no dia 05 do mês de");
            }
            else
            if (dia == 6)
            {
                out.println("Você está no dia 06 do mês de");
            }
            else
            if (dia == 7)
            {
                out.println("Você está no dia 07 do mês de");
            }
            else
            if (dia == 8)
            {
                out.println("Você está no dia 08 do mês de");
            }
            else
            if (dia == 9)
            {
                out.println("Você está no dia 09 do mês de");
            }
            else
            if (dia == 10)
            {
                out.println("Você está no dia 10 do mês de");
            }
            else
            if (dia == 11)
            {
                out.println("Você está no dia 11 do mês de");
            }
            else
            if (dia == 12)
            {
                out.println("Você está no dia 12 do mês de");
            }
            else
            if (dia == 13)
            {
                out.println("Você está no dia 13 do mês de");
            }
            else
            if (dia == 14)
            {
                out.println("Você está no dia 14 do mês de");
            }
            else
            if (dia == 15)
            {
                out.println("Você está no dia 15 do mês de");
            }
            else
            if (dia == 16)
            {
                out.println("Você está no dia 16 do mês de");
            }
            else
            if (dia == 17)
            {
                out.println("Você está no dia 17 do mês de");
            }
            else                
            if (dia == 18)
            {
                out.println("Você está no dia 18 do mês de");
            }
            else
            if (dia == 19)
            {
                out.println("Você está no dia 19 do mês de");
            }
            else
            if (dia == 20)
            {
                out.println("Você está no dia 20 do mês de");
            }
            else
            if (dia == 21)
            {
                out.println("Você está no dia 21 do mês de");
            }
            else
            if (dia == 22)
            {
                out.println("Você está no dia 22 do mês de");
            }
            else
            if (dia == 23)
            {
                out.println("Você está no dia 23 do mês de");
            }
            else
            if (dia == 24)
            {
                out.println("Você está no dia 24 do mês de");                
            }
            else
            if (dia == 25)
            {
                out.println("Você está no dia 25 do mês de");
            }
            else
            if (dia == 26)
            {
                out.println("Você está no dia 26 do mês de");
            }
            else
            if (dia == 27)
            {
                out.println("Você está no dia 27 do mês de");
            }
            else
            if (dia == 28)
            {
                out.println("Você está no dia 28 do mês de");
            }
            else
            if (dia == 29)
            {
                out.println("Você está no dia 29 do mês de");
            }
            else
            if (dia == 30)
            {
                out.println("Você está no dia 30 do mês de");
            }
            else
            if (dia == 31)
            {
                out.println("Você está no dia 31 do mês de");
            }
                       
            //CRIANDO CONDICAO - MES
            if (mes == 1)
            {
                out.println("janeiro do ano de ");
            }
            else
            if (mes == 2)
            {
                out.println("fevereiro do ano de ");
            }
            else
            if (mes == 3)
            {
                out.println("março do ano de ");
            }
            else
            if (mes == 4)
            {
                out.println("abril do ano de ");
            }
            else
            if (mes == 5)
            {
                out.println("maio do ano de ");
            }
            else
            if (mes == 6)
            {
                out.println("junho do ano de ");
            }
            else
            if (mes == 7)
            {
                out.println("julho do ano de ");
            }
            else
            if (mes == 8)
            {
                out.println("agosto do ano de ");
            }
            else
            if (mes == 9)
            {
                out.println("setembro do ano de ");
            }
            else
            if (mes == 10)
            {
                out.println("outubro do ano de ");
            }
            else
            if (mes == 11)
            {
                out.println("novembro do ano de ");
            }
            else
            if (mes == 12)
            {
                out.println("dezembro do ano de ");
            }
            
            //CRIANDO CONDICAO - 
            if (ano == 2015)
            {
                out.println("2015.");
            }                     
            else
            if (ano == 2016)
            {
                out.println("2016.");
            }       
            else
            if (ano == 2017)
            {
                out.println("2017.");
            }   
            
        %>
    </body>
</html>
