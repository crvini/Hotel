<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <title>Confirmacion</title>
    </head>


    <body>
        <!-- Inicio del index
        *
        *
        *
        * AQUI NO SE DEBE DE TOCAR NADA
        *
        *
        *
        *
        -->
        <%
            String direcc=(String)session.getAttribute("direccion");
        %>

        <div style="width: 50%;border: solid 1px #000000;position: absolute;top: 25%;left: 25%;height: 40%; background-color: #0dbcb3">
            <div style="position: absolute;top: 40%;left: 20%;font-size: 20px;font-weight: 600;">LOS DATOS SE INSERTARON CORRECTAMENTE</div>

            <div style="position: absolute;top: 90%;">La pagina se redireccionara automaticamente en 5 segundos</div>
        </div>

        <script>
             setTimeout(function(){
                window.location.replace("<%=direcc%>");
            },5000);
            
        </script>

        <!-- Final del index -->
    </body>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</html>



