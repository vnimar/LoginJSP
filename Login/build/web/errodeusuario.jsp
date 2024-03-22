<%@page isErrorPage="true" %>%>
<%@page import="java.util.Enumeration" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style type="text/css">
            body{ background-color:#fff;}
            #cabecalho{
                background-color: #fff;
                width: 800px;
                height: 100px;
            }
            
            #corpo{
                background-color: #fff;
                width: 800px;
                height: 450px;
            }
            
            #rodape{
                background-color: #fff;
                width: 800px;
                height: 100px;
            }
        </style>
        <title>Error</title>
    </head>
    <body>
        <div align="center">
            <div id="cabecalho"></div>
            <div id="corpo">
                <img src="imagens/erro1_20240308-0854.jpg">
                <hr/>
                <h3>Email e Senha incorretos</h3><br/>
                <br/>
                <hr/>
                <a href="login.jsp">Tentar Novamente</a> <a href="index.jsp">Cadastrar-se</a>
            </div>
            <div id="rodape"> </div>
        </div>
    </body>
</html>
