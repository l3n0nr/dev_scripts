
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exemplo Formulario</title>
    </head>
    <body>
        <h1 align="center">Exemplo Formulario</h1>
        <hr>    
        <!--CRIANDO FORMULARIO HTML-->
        <form action="formulario1.jsp" method="post">
            Nome: <input type="text" name="txtnome"/>
            </br>
            </br>
            E-mail: <input type="text" name="txtemail"/>
            </br>
            </br>
            Idade: <input type="text" name="txtidade">
            </br>
            </br>
            <h2> Escolha as disciplinas que deseja cursar </h2>
            <fieldset>
                Matemática: <input type="checkbox" name="matematica" />
                </br>
                Portugues: <input type="checkbox" name="portugues" />            
                </br>
                Eletiva: <input type="checkbox" name="eletiva" checked />          
                </br>
            </fieldset>
            </br>
            Data de Nascimento: <input type="text" name="txtdata"/>
            </br>
            </br>
            Senha: <input type="password" name="txtsenha" maxlength="10"/>                        
            </br>
            <hr>
            <h1 align="center">
                <input type="submit" value="submit"/>            
            </h1>
        <form>            
    </body>
</html>
