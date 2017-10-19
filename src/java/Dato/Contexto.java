/*
 *  Quiz WEB MySQL
 *      Author ::: Brian Sterling
 *     Program ::: Bases de Datos
 *  Credential ::: SIST0008-G01:SIV
 */
package Dato;

import java.util.ArrayList;

public class Contexto 
{
    private int idContexto;
    private String link;
    ArrayList<Tabla> listaTablas = new ArrayList<Tabla>();

    public Contexto()
    {}

    public Contexto(int idContexto, String link)
    {
        this.idContexto = idContexto;
        this.link = link;
    }

    public int getIdContexto()
    {
        return idContexto;
    }

    public void setIdContexto(int idContexto)
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
        return "Contexto{\n" + "idContexto=" + idContexto + ", Link=" + link + "\n  listaTablas=" + listaTablas + "}\n\n";
    }
}