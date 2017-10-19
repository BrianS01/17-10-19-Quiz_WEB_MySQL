/*
 *  Quiz WEB MySQL
 *      Author ::: Brian Sterling
 *     Program ::: Bases de Datos
 *  Credential ::: SIST0008-G01:SIV
 */
package DAO;

import Dato.Squema;
import Dato.Tabla;
import Servicios.DbUtil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class TablaDao
{

    private Connection connection;

    public TablaDao() {
        connection = DbUtil.getConnection();
    }

    public void addTabla(Tabla tabla) {
        try {
            PreparedStatement preparedStatement = connection
                    .prepareStatement("insert into tabla(firstname) values (?)");
            // Parameters start with 1
            preparedStatement.setString(1, tabla.getNombre());
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void deleteTabla(int tablaId) {
        try {
            System.out.println("Entro a eliminar");
            PreparedStatement preparedStatement = connection
                    .prepareStatement("delete from tabla where Tablaid=?");
            // Parameters start with 1
            preparedStatement.setInt(1, tablaId);
            preparedStatement.executeUpdate();
            System.out.println("Elimino tabla");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void updateTabla(Tabla tabla, int cs) {
        try {
            PreparedStatement preparedStatement = connection
                    .prepareStatement("update tabla set firstname=?  where Tablaid=" + cs);

            // Parameters start with 1
            preparedStatement.setString(1, tabla.getNombre());
            // preparedStatement.setInt(2, squema.getId_Squema());
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<Tabla> getAllTablas() {
        List<Tabla> tablaLista = new ArrayList<Tabla>();
        try {
            System.out.println("LLegue hasta aca");
            Statement statement = connection.createStatement();

            ResultSet rs = statement.executeQuery("select * from tabla");
            while (rs.next()) {
                Tabla tabla = new Tabla();
                tabla.setId_Tabla(rs.getInt("tablaid"));
                tabla.setNombre(rs.getString("firstname"));
                tablaLista.add(tabla);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return tablaLista;
    }

    public Tabla getTablaById(int tablaId) {
        Tabla tabla = new Tabla();
        try {
            PreparedStatement preparedStatement = connection.
                    prepareStatement("select * from squemas where Squemaid=?");
            preparedStatement.setInt(1, tablaId);
            ResultSet rs = preparedStatement.executeQuery();

            if (rs.next()) {
                tabla.setId_Tabla(rs.getInt("tablaid"));
                tabla.setNombre(rs.getString("firstname"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return tabla;
    }
}
