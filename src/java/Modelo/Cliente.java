/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import Controlador.Conector;
/**
 *
 * @author crige
 */
public class Cliente extends Conector {
        public void insertar_nuevo_cliente(String nit_cliente, String nombre_cliente, String direccion, 
                                            int telefono){
        String query="INSERT INTO clientes(nit_cliente, nombre_cliente, direccion, telefono) "
                + " VALUES ('"+nit_cliente+ "', '"+nombre_cliente+"', '"+direccion+"', "+telefono+")";
        this.consulta_vacia(query);
    }
}
