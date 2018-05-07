<%-- 
    Document   : primeiroexemplo
    Created on : 31/08/2015, 21:49:07
    Author     : IFFarroupilha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1> <!--comentário html, conteudo estático-->
        <p> 
            <% 
               //criando variavel
               int idade = 18;               
               out.println("3+5 é " + (3+5) + "<br>"); //comentário java, conteudo dinamico 
               out.println("<b>" + "Sua idade é:" + "</b>" + idade);               
            %> 
            <p>Sua idade é <%= idade %> </p>
        </p>
    </body>
</html>
