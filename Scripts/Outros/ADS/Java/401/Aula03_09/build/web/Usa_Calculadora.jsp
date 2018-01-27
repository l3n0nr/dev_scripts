<%-- 
    Document   : Usa_Calculadora
    Created on : 03/09/2015, 22:20:28
    Author     : lenonr
--%>

<%@page contentType="text/html" import="Calculos.Calculadora" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Utilizando classe externa</h1>
        <%
            Calculadora c = new Calculadora();
            float n1= 2;
            float n2= 4;
            out.println("N1 + N2 = " + c.soma(n1, n2));
            out.println("<br>");
            out.println("N1 - N2 = " + c.subtracao(n1,n2));
            out.println("<br>");
            out.println("N1 + N2 = " + c.multiplicacao(n1,n2));
            out.println("<br>");
            out.println("N1 + N2 = " + c.divisao(n1,n2));
            out.println("<br>");
        %>
    </body>
</html>
