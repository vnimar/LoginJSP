<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script text="text/javascript">
            function validarLogin(){
                if(document.formLogin.nome.value===""){
                    alert("Campo Nome Nao Informado");
                    return false;
                }
                if(document.formLogin.email.value===""){
                    alert("Campo Usuario Nao Informado");
                    return false;
                }
                if(document.formLogin.senha.value===""){
                    alert("Campo Senha Nao Informado");
                    return false;
                }
                
                document.formLogin.submit();
            }
        </script>
        <title>Acessar</title>
    </head>
    <body>
        <!-- <h1>Login</h1> -->
        <form name="formLogin" action="Login" method="post">
            <p align="center">
            <table>
                <tr><td>Nome:</td><td><input type="text" name="nome" /></td></tr>
                <tr><td>Email:</td><td><input type="text" name="email" /></td></tr>
                <tr><td>Senha:</td><td><input type="password" name="senha" /></td></tr>
                <tr><td colspan="2" align="center"><input type="button" value="Entrar" 
                                                          onclick="validarLogin()"></td></tr>
            </table>    
            </p>
        </form>
    </body>
</html>
