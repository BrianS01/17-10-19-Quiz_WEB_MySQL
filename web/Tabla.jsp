<%-- 
    Document   : Tabla
    Created on : 16/10/2017, 02:59:18 PM
    Author     : Mario-Bx
--%>
<%@page import="Dato.Tabla"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Add new Tablas</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum.scale=1.0">
        <link rel="stylesheet" href="ui/Css/MenuDesplegableSub.css">
        <link rel="stylesheet" href="ui/Css/Etilo Fomulario.css">
    </head>

    <body>
        <div id="Centrar">
            <div id="Telon" align="center">
                <div class="Menu">
                    <header class="Menu_Des">
                        <input type="checkbox" id="btn_Menu">
                        <label for="btn_Menu"> <img class="icon"  src="ui/Imagenes/menu-icon.png"></label>
                        <div class="Menu">
                            <header class="Menu_Des">
                                <input type="checkbox" id="btn_Menu">
                                <label for="btn_Menu"> <img class="icon"  src="ui/Imagenes/menu-icon.png"></label>
                                <nav class="MenuCss">
                                    <ul>
                                        <li><a href="index.jsp"><span class="uno"><img class="icon" src="ui/Imagenes/icon1.png" /></span>Inicio</a></li>
                                        <li><a href="SquemaIndex.jsp"><span class="dos"><img class="icon" src="ui/Imagenes/Esquema.png" /> </span>Squemas</a></li>
                                        <li><a href=""><span class="tres"><img class="icon" src="ui/Imagenes/Database-Table-icon.png" /> </span>Tablas</a></li>
                                        <li><a href=""><span class="cuatro"><img class="icon" src="ui/Imagenes/Columna.png" /> </span>Columnas</a></li>
                                    </ul>
                                </nav>
                            </header>                
                        </div>
                    </header>                
                </div>

                <div class="form-style-5">
                    <%
                        Tabla newTabla = (Tabla) request.getAttribute("frmAddTabla");
                        if (request.getParameter("action").equals("insert")) {
                    %>
                    <form method="POST" action='TablaController' name="frmAddUser">
                       Tabla ID : <input type="text" readonly="readonly" name="Tablaid"/>
                        <br /> 
                        Nombre Tabla : <input type="text" name="Name"/>
                        <br />
                        <input type="submit" value="Insertar" />
                    </form>
                    <%
                    } else if((request.getParameter("action").equals("edit"))){
                    %>
                    <form method="POST" action='TablaController'  name="frmAddTabla">
                        Tabla ID : <input type="text"  name="Tablaid"/>
                        <br /> 
                        Nombre Tabla : <input type="text" name="Name"/>
                        <br /> 
                        <input type="submit" value="Editar" />
                    </form>
                    <%
                        }
                    %>
                </div>

            </div>
        </div>

    </body>
</html>

