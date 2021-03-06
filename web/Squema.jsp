<%-- 
 *  Quiz WEB MySQL
 *      Author ::: Brian Sterling
 *     Program ::: Bases de Datos
 *  Credential ::: SIST0008-G01:SIV
--%>
<%@page import="Dato.Squema"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Add new Squemas</title>
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
                        Squema newSquema = (Squema) request.getAttribute("frmAddSquema");
                        if (request.getParameter("action").equals("insert"))
                        {
                    %>
                    <form method="POST" action='SquemaController' name="frmAddUser">
                        Squema ID : <input type="text" readonly="readonly" name="Squemaid"/>
                        <br /> 
                        Nombre Squema : <input type="text" name="Name"/>
                        <br />
                        <input type="submit" value="Insertar" />
                    </form>
                    <%
                        }
                        else if((request.getParameter("action").equals("edit")))
                        {
                    %>
                    <form method="POST" action='SquemaController'  name="frmAddSquema">
                        Squema ID : <input type="text"  name="Squemaid"/>
                        <br /> 
                        Nombre Squema : <input type="text" name="Name"/>
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