/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dato;

import java.util.ArrayList;

public class Contexto 
{
    private int idContexto;
    private String link;
    ArrayList<Tabla> listaTablas = new ArrayList<Tabla>();

    public Contexto()
    {
    }

    public Contexto(int idContexto, String link)
    {
        this.idContexto = idContexto;
        this.link = link;
    }

    public int getId_Squema()
    {
        return idContexto;
    }

    public void setId_Squema(int idContexto)
    {
        this.idContexto = idContexto;
    }

    public String getNombre()
    {
        return link;
    }

    public void setNombre(String Nombre)
    {
        this.link = Nombre;
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
        return "Squema{\n" + "id_Squema=" + idContexto + ", Nombre=" + link + "\n  listaTablas=" + listaTablas + "}\n\n";
    }
}