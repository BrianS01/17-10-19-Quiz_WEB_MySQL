/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dato;

import java.util.ArrayList;

public class Unidad 
{
    private int idUnidad;
    ArrayList<Tabla> listaTablas = new ArrayList<Tabla>();

    public Unidad()
    {
    }

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