<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script language="Javascript">
            var timer = 2;
            function countdown(){
                if(timer > 0){
                    timer -= 1;
                    setTimeout("countdown()", 3000);
                } else {
                    location.href = 'login.jsp';
                }
            }
            countdown();
        </script>    
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro</title>
    </head>
    <body>
        <!-- <h1>Cadastro</h1> -->
        <%  String nome = (String) request.getAttribute("nome");
            String email = (String) request.getAttribute("email");
            out.println("<h4>Nome " + nome + " e <h4>");
            out.println("<h4>Email " + email + " Cadastrado com sucesso<h4>");
            out.println("Voce será redirecionado para a pagina de login");
        %>
    </body>
</html>
