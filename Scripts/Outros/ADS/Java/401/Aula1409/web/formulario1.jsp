

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Dados do formulario</h1>
        <%
            String nome = request.getParameter("txtnome");
            String senha = request.getParameter("txtsenha");
            
            String email = request.getParameter("txtemail");
            //String datanasc = request.getParameter("txtdata");
            
           
            /*
                if (nome.equals(""))
                {
                    out.println("Nenhum nome foi digitado!");
                }
                else
                {
                    out.println("Bem vindo " + nome + " !");
                }
            */
            
            if (nome.equals("aluno") && (senha.equals("123")))
            {
                out.println("Bem vindo usuário " + nome + "!");
                
                //CALCULANDO IDADE DO USUARIO
                int idade = Integer.parseInt(request.getParameter("txtidade"));
                if (idade >= 18)
                {
                    out.println("Você já é maior de idade");
                }
                else
                {
                    out.println("Você ainda é menor de idade");
                }
                
                String disciplina = "<ul>";
                out.println("</br>");
                out.println("</br>");
                out.println("Você faz as seguintes materias");
                if (request.getParameter("matematica") != null)
                {
                    disciplina += "<li> Matematica </li>";
                }
                if (request.getParameter("portugues") != null)
                {
                    disciplina += "<li> Portugues </li>";
                }
                if (request.getParameter("eletiva") != null) 
                {
                    disciplina += "<li> Eletiva </li>";
                }
                disciplina += "</ul>";
                
                //IMPRIMINDO DISCIPLINAS
                out.println(disciplina);
                
                out.println("<hr>");
                out.println("Nome: " + nome);
                out.println("</br>");
                out.println("E-mail: " + email);
                out.println("</br>");
                out.println("Data de Nascimento: " + request.getParameter("txtdata"));
                out.println("<hr>");
            }
            else
            {
                out.println("Usuario ou senha incorretos");
            }
        %>
    </body>
</html>
