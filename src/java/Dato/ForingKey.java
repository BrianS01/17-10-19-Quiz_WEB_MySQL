/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dato;

/**
 *
 * @author Mario-Bx
 */
public class ForingKey extends Columna{
    private Tabla id_ForingKey;

    public ForingKey(Tabla id_ForingKey) {
        this.id_ForingKey = id_ForingKey;
    }

    public ForingKey(int id_Colimna, String Nombre, String tipoDato) {
        super(id_Colimna, Nombre, tipoDato);
    }
    
    
    
}
