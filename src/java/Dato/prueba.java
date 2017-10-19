/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dato;

import java.util.ArrayList;

/**
 *
 * @author Mario-Bx
 */
public class prueba {
    public static void main(String[] args) {
        
        Squema newSquema1 = new Squema(1, "Universidades");
        Squema newSquema2 = new Squema(2, "Deporte");
        
        ArrayList<Tabla> listaTablas1 = new ArrayList<Tabla>();
        ArrayList<Tabla> listaTablas2 = new ArrayList<Tabla>();
        Tabla newTabla1 = new Tabla(1, "Sergio Arboleda");
        Tabla newTabla2 = new Tabla(2, "Los Andes");
        Tabla newTabla3 = new Tabla(1, "Naacion");
        Tabla newTabla4 = new Tabla(2, "Futbol");
        
        listaTablas1.add(newTabla1);
        listaTablas1.add(newTabla2);
        listaTablas2.add(newTabla3);
        listaTablas2.add(newTabla4);
        
        newSquema1.setListaTablas(listaTablas1);
        newSquema2.setListaTablas(listaTablas2);
        
        
        ArrayList<ForingKey> listaForingKeys = new ArrayList<ForingKey>();
        ArrayList<Columna> listaColumnas = new ArrayList<Columna>();
        ArrayList<Key> listaKey = new ArrayList<Key>();
        ForingKey newForingKey = new ForingKey(1, "Nombre", "String");
        Columna newColumna = new Columna(1, "Edad", "int");
        Key newKey = new Key(1, "Cedula", "String");
        
        listaForingKeys.add(newForingKey);
        listaColumnas.add(newColumna);
        listaKey.add(newKey);
        
        newTabla1.setListaForingKey(listaForingKeys);
        newTabla1.setListaColumnas(listaColumnas);
        newTabla1.setListaKey(listaKey);
        
        
        
        
        
        
        System.out.println(newSquema1.ImplimirSquema());
        
       
        
        
    }
    
}
