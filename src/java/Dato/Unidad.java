/*
 *  Quiz WEB MySQL
 *      Author ::: Brian Sterling
 *     Program ::: Bases de Datos
 *  Credential ::: SIST0008-G01:SIV
 */
package Dato;

import java.util.ArrayList;

public class Unidad 
{
    private int idUnidad;
    ArrayList<Tabla> listaTablas = new ArrayList<Tabla>();

    public Unidad()
    {}

    public Unidad(int idContexto)
    {
        this.idUnidad = idContexto;
    }

    public int getIdUnidad()
    {
        return idUnidad;
    }

    public void setIdUnidad(int idContexto)
    {
        this.idUnidad = idContexto;
    }

    public ArrayList<Tabla> getListaTablas()
    {
        return listaTablas;
    }

    public void setListaTablas(ArrayList<Tabla> listaTablas)
    {
        this.listaTablas = listaTablas;
    }

    public String ImplimirSquema()
    {
        return "Unidad{\n" + "idUnidad=" + idUnidad + "\n  listaTablas=" + listaTablas + "}\n\n";
    }
}