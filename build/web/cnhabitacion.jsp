<%@page import="Modelo.Habitacion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <title>Crear Habitaciones</title>
    </head>
    <!-- Inicio del navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="index.jsp">Habitaciones</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="index.jsp">Ir a Inicio</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Habitaciones
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="cnhabitacion.jsp">Crear Nueva Habitación</a>
                        <a class="dropdown-item" href="achabitacion.jsp">Actualizar Habitación</a>
                        <a class="dropdown-item" href="cshabitacion.jsp">Consultar Habitaciones</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Empleados
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="cnempleado.jsp">Crear Nuevo Empleado</a>
                        <a class="dropdown-item" href="acempleado.jsp">Actualizar Empleado</a>
                        <a class="dropdown-item" href="csempleado.jsp">Consultar Empleados Activos</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Tarifas
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="cntarifa.jsp">Crear Nueva Tarifa</a>
                        <a class="dropdown-item" href="actarifa.jsp">Actualizar Tarifa</a>
                        <a class="dropdown-item" href="cstarifa.jsp">Consultar Tarifas</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Cargos Extras
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="cncargo.jsp">Crear Nuevo Cargo Extra</a>
                        <a class="dropdown-item" href="accargo.jsp">Actualizar Cargo Extra</a>
                        <a class="dropdown-item" href="cscargo.jsp">Consultar Cargos Extras</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Llamadas
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="cnllamada.jsp">Crear Nueva Llamada</a>
                        <a class="dropdown-item" href="csllamada.jsp">Consultar Llamadas</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Clientes
                        <span class="sr-only">(current)</span>
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="cncliente.jsp">Crear Nuevo Cliente</a>
                        <a class="dropdown-item" href="cscliente.jsp">Consultar y Actualizar Clientes</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Reservaciones
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="cnreservacion.jsp">Crear Nueva Reservacion</a>
                        <a class="dropdown-item" href="acreservacion.jsp">Actualizar Reservacion</a>
                        <a class="dropdown-item" href="csreservacion.jsp">Consultar Reservaciones</a>
                    </div>
                </li>      

            </ul>
        </div>
    </nav>
    <body>
        <!-- Inicio del index -->


        <center>
            <div>
                <h1>Crear Habitaciones</h1>
            </div>
        </center>
        <br>
        <center>
            <div style="width: 80%; border: solid 1px #000000; ">
                <form style="margin: 2%" method="POST" action="HabitacionServlet">

                    <div>
                        <label style="font-weight: 700">Tipo habitación</label>
                        <br>
                        <select name="tipoHabitacion">
                            <option value="Matrimonial">Matrimonial</option>
                            <option value="Matrimonial">Individual</option>
                            <option value="Matrimonial">Familiar</option>
                        </select>
                    </div>
                    <br>
                    <div>
                        <label style="font-weight: 700">Descripción</label>
                        <br>
                        <textarea style="width: 70%; height: 150px;" name="descripcionHabitacion"></textarea>
                    </div>
                    <br>
                    <div>
                        <label style="font-weight: 700">Capacidad</label>
                        <br>
                        <input type="number" style="width: 50px;" name="capacidadHabitacion"/>
                    </div>
                    <br>
                    <div>
                        <label style="font-weight: 700">Estado</label>
                        <br>
                        <select name="estadoHabitacion">
                            <option>Libre</option>
                            <option>Reservado</option>
                            <option>Ocupado</option>
                        </select>
                    </div>
                    <br>
                    <div>
                        <label style="font-weight: 700">Hotel Perteneciente</label>
                        <br>
                        <select id="comboHotelPerteneciente" name="habitacionHotelPerteneciente">
                        </select>
                    </div>
                    <br>
                    <div>
                        <button>Registrar</button>
                    </div>
                </form>
            </div>
        </center>
        <script language='javascript'>
            var agregarOpciones = "";
            var valor = "";
            var texto = "";
            <%
                String idHotel[][];
                Habitacion hb = new Habitacion();
                idHotel = hb.consultar_IDhotel();
                //String prueba = idHotel[0][1].toString();
                //System.out.println(prueba);
                for (int i = 0; i < idHotel.length; i++) {

            %>
            valor = "<%=idHotel[i][0].toString()%>";
            texto = "<%=idHotel[i][1].toString()%>";
            agregarOpciones += "<option value='" + valor + "'>" + texto + "</option>";



            <%

                }

            %>
            //console.log(agregarOpciones);
            document.getElementById("comboHotelPerteneciente").innerHTML = agregarOpciones;
        </script>

        <!-- Final del index -->
    </body>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</html>



