<%-- 
    Document   : TablaLista
    Created on : 18/10/2017, 05:52:00 AM
    Author     : Juan Albarracin
--%>

<%@page import="Dato.Tabla"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Tablas</title>
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


                <div class="form-style-5">
                    <a href="TablaController?action=insert"><input type="submit" value="Add Tabla"/></a>
                    <table border=1>
                        <thead>
                            <tr>
                                <th>Tabla Id</th>
                                <th>Nombre De La Tabla</th>
                                <th colspan=2>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                List<Tabla> tablas = (List<Tabla>) request.getAttribute("tablas");
                                if (tablas != null) {
                                    for (Tabla tabla : tablas) {
                            %>
                            <tr>
                                <td><%=tabla.getId_Tabla()%></td>
                                <td><%=tabla.getNombre()%></td>
                                <td><a href="TablaController?action=edit&Tablaid=<%=tabla.getId_Tabla()%>">Actualizar</a></td>
                                <td><a href="TablaController?action=delete&Tablaid=<%=tabla.getId_Tabla()%>">Eliminar</a></td>
                            </tr>

                            <%
                                    }

                                }

                            %>

                        </tbody>
                    </table>
                    
                </div>

            </div>
        </div>

    </body>
</html>
