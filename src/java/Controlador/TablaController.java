/*
 *  Quiz WEB MySQL
 *      Author ::: Brian Sterling
 *     Program ::: Bases de Datos
 *  Credential ::: SIST0008-G01:SIV
 */
package Controlador;

import DAO.SquemaDao;
import DAO.TablaDao;
import Dato.Squema;
import Dato.Tabla;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class TablaController extends HttpServlet 
{

    private static final long serialVersionUID = 1L;
    private static String INSERT_OR_EDIT = "/Tabla.jsp";
    private static String LIST_USER = "/TablaLista.jsp";
    private TablaDao dao;

    public TablaController()
    {
        super();
        dao = new TablaDao();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        String forward = "";
        String action = request.getParameter("action");

        if (action.equalsIgnoreCase("delete"))
        {
            System.out.println("Entro a la accion");
            int tablaId = Integer.parseInt(request.getParameter("Tablaid"));
            dao.deleteTabla(tablaId);
            forward = LIST_USER;
            ///primero va la tabla de sql
            request.setAttribute("tabla", dao.getAllTablas());
            System.out.println(" Realizo la accion de eliminar");
        }
        else if (action.equalsIgnoreCase("edit"))
        {
            forward = INSERT_OR_EDIT;
            int tablaId = Integer.parseInt(request.getParameter("Tablaid"));
            Tabla tabla = dao.getTablaById(tablaId);
            ///primero va la tabla de sql
            request.setAttribute("Tabla", tabla);
            System.out.println(" Realizo la accion de editar");
        }
        else if (action.equalsIgnoreCase("TablaLista"))
        {
            forward = LIST_USER;
            request.setAttribute("tabla", dao.getAllTablas());
        }
        else
        {
            forward = INSERT_OR_EDIT;
        }

        RequestDispatcher view = request.getRequestDispatcher(forward);
        view.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        Tabla tabla = new Tabla();
        tabla.setNombre(request.getParameter("Name"));
        String tablaid = request.getParameter("Tablaid");

        if (tablaid == null || tablaid.isEmpty())
        {
            dao.addTabla(tabla);
        }
        else
        {
            tabla.setId_Tabla(Integer.parseInt(tablaid));
            int tablaId = Integer.parseInt(request.getParameter("Tablaid"));
            dao.updateTabla(tabla, tablaId);
        }
        
        RequestDispatcher view = request.getRequestDispatcher(LIST_USER);
        request.setAttribute("tabla", dao.getAllTablas());
        view.forward(request, response);
    }
}