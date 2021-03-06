/*
 *  Quiz WEB MySQL
 *      Author ::: Brian Sterling
 *     Program ::: Bases de Datos
 *  Credential ::: SIST0008-G01:SIV
 */
package Dato;

public class Columna
{
    private int id_Colimna;
    private String Nombre;
    private String tipoDato;

    public Columna() 
    {}

    public Columna(int id_Colimna, String Nombre, String tipoDato)
    {
        this.id_Colimna = id_Colimna;
        this.Nombre = Nombre;
        this.tipoDato = tipoDato;
    }

    public int getId_Colimna()
    {
        return id_Colimna;
    }

    public void setId_Colimna(int id_Colimna)
    {
        this.id_Colimna = id_Colimna;
    }

    public String getNombre()
    {
        return Nombre;
    }

    public void setNombre(String Nombre)
    {
        this.Nombre = Nombre;
    }

    public String getTipoDato()
    {
        return tipoDato;
    }

    public void setTipoDato(String tipoDato)
    {
        this.tipoDato = tipoDato;
    }

    @Override
    public String toString()
    {
        return "Columna{" + "id_Colimna=" + id_Colimna + ", Nombre=" + Nombre + ", tipoDato=" + tipoDato + "}";
    }
}