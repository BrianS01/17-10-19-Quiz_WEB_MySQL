/*
 *  Quiz WEB MySQL
 *      Author ::: Brian Sterling
 *     Program ::: Bases de Datos
 *  Credential ::: SIST0008-G01:SIV
 */
package Dato;

import java.util.ArrayList;

public class Tabla
{
    private int id_Tabla;
    private String Nombre;
    ArrayList<ForingKey> listaForingKey = new ArrayList<ForingKey>();
    ArrayList<Columna> listaColumnas = new ArrayList<Columna>();
    ArrayList<Key> listaKey = new ArrayList<Key>();

    public Tabla()
    {}

    public Tabla(int id_Tabla, String Nombre)
    {
        this.id_Tabla = id_Tabla;
        this.Nombre = Nombre;
    }

    public int getId_Tabla()
    {
        return id_Tabla;
    }

    public void setId_Tabla(int id_Tabla)
    {
        this.id_Tabla = id_Tabla;
    }

    public String getNombre()
    {
        return Nombre;
    }

    public void setNombre(String Nombre)
    {
        this.Nombre = Nombre;
    }

    public ArrayList<ForingKey> getListaForingKey()
    {
        return listaForingKey;
    }

    public void setListaForingKey(ArrayList<ForingKey> listaForingKey)
    {
        this.listaForingKey = listaForingKey;
    }

    public ArrayList<Columna> getListaColumnas()
    {
        return listaColumnas;
    }

    public void setListaColumnas(ArrayList<Columna> listaColumnas)
    {
        this.listaColumnas = listaColumnas;
    }

    public ArrayList<Key> getListaKey()
    {
        return listaKey;
    }

    public void setListaKey(ArrayList<Key> listaKey)
    {
        this.listaKey = listaKey;
    }

    @Override
    public String toString()
    {
        return "Tabla{" + "id_Tabla=" + id_Tabla + ", Nombre=" + Nombre
                + "\n         listaColumnas=" + listaColumnas
                + "\n         listaKey=" + listaKey
                + "\n         listaForingKey=" + listaForingKey + "}\n\n";
    }
}