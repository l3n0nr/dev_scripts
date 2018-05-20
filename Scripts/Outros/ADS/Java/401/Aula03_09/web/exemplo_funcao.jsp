<%-- 
    Document   : exemplo_funcao
    Created on : 03/09/2015, 22:04:01
    Author     : lenonr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%!
    public int posterior(int numero)
    {
        int posterior = numero +1;
        return posterior;
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Funções: Para posterior e Anterior</h1>
        <%
            int n1 = 10; 
            out.println("Numero: " + n1);
            out.println("<br>");
            out.println("Posterior: " + posterior(n1));
        %>

    </body>
</html>
