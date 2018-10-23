/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import Controlador.Conector;

    
public class Habitacion extends Conector {
  
    
    public String[][] consultar_IDhotel(){
        String datos[][];
        String query="SELECT id_hotel, nombre FROM HOTELES";
        datos=this.consulta_registros(query);
        return datos;
    }
    public void insertar_nueva_habitacion(String tipo_habitacion, String descripcion, int capacidad, 
                                            String estado, int id_hotel){
        String query="INSERT INTO habitaciones(tipo_habitacion, descripcion, capacidad, estado, id_hotel) "
                + " VALUES ('"+tipo_habitacion+ "', '"+descripcion+"', "+capacidad+", '"+estado+"', "+id_hotel+" )";
        this.consulta_vacia(query);
    }
}
