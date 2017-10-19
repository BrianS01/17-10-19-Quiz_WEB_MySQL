/*
 *  Quiz WEB MySQL
 *      Author ::: Brian Sterling
 *     Program ::: Bases de Datos
 *  Credential ::: SIST0008-G01:SIV
 */
package Dato;

import java.util.*;

public class Squema {

    private int id_Squema;
    private String Nombre;
    ArrayList<Tabla> listaTablas = new ArrayList<Tabla>();

    public Squema() {
    }

    public Squema(int id_Squema, String Nombre) {
        this.id_Squema = id_Squema;
        this.Nombre = Nombre;
    }

    public int getId_Squema() {
        return id_Squema;
    }

    public void setId_Squema(int id_Squema) {
        this.id_Squema = id_Squema;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public ArrayList<Tabla> getListaTablas() {
        return listaTablas;
    }

    public void setListaTablas(ArrayList<Tabla> listaTablas) {
        this.listaTablas = listaTablas;
    }

    public String ImplimirSquema() {
        return "Squema{\n" + "id_Squema=" + id_Squema + ", Nombre=" + Nombre
                + "\n  listaTablas=" + listaTablas + "}\n\n";
    }

}