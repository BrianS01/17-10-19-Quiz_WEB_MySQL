<%-- 
 *  Quiz WEB MySQL
 *      Author ::: Brian Sterling
 *     Program ::: Bases de Datos
 *  Credential ::: SIST0008-G01:SIV
--%>

<%@page import="Dato.Squema"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Squemas</title>
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
                    <a href="SquemaController?action=insert"><input type="submit" value="Add Esquema"/></a>
                    <table border=1>
                        <thead>
                            <tr>
                                <th>Squema Id</th>
                                <th>Nombre Del Squema</th>
                                <th colspan=2>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                List<Squema> squemas = (List<Squema>) request.getAttribute("squemas");
                                if (squemas != null) {
                                    for (Squema squema : squemas) {
                            %>
                            <tr>
                                <td><%=squema.getId_Squema()%></td>
                                <td><%=squema.getNombre()%></td>
                                <td><a href="SquemaController?action=edit&Squemaid=<%=squema.getId_Squema() %>">Actualizar</a></td>
                                <td><a href="SquemaController?action=delete&Squemaid=<%=squema.getId_Squema() %>">Eliminar</a></td>
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

