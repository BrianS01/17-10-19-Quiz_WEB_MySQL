/*
 *  Quiz WEB MySQL
 *      Author ::: Brian Sterling
 *     Program ::: Bases de Datos
 *  Credential ::: SIST0008-G01:SIV
 */
package Dato;

public class ForingKey extends Columna 
{
    private Tabla id_ForingKey;

    public ForingKey(Tabla id_ForingKey)
    {
        this.id_ForingKey = id_ForingKey;
    }

    public ForingKey(int id_Colimna, String Nombre, String tipoDato)
    {
        super(id_Colimna, Nombre, tipoDato);
    }
}