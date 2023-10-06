<%-- 
    Document   : index
    Created on : Sep 17, 2023, 6:40:23 PM
    Author     : alice
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Página JSP</title>
    </head>
    <style>
        body {
            text-align: center;
        }
        * {
            margin-bottom: 20px;
        }
    </style>
    <body>
        <h1>LDSW - Atividade 4</h1>
        <form action="ServletMenu" method="post">
            <label for="nome">Login:</label>      
            <br>
            <input type="text" id="nome" name="nome">
            <br>
            <label for="senha">Senha:</label>
            <br>
            <input type="password" id="senha" name="senha">
            <br>
            <button type="submit">Fazer login</button>
        </form>
        <% String mensagem = (String) request.getSession().getAttribute("mensagem");
        if ( mensagem != null ) {
        %>
        <span id="erro"><%= mensagem %></span>
        <% 
        }
        %>
            
    </body>
</html>
