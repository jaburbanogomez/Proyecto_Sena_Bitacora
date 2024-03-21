/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package conexion_bd;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author daniell
 */
public class Usuario_CRUD extends Conexion_bd {

    static String nombre;
    static String apellido;
    static String id_ficha;
    static String id_centro;
    static String id_usuario;
    static String nombre_rol;
    static String id_area;

    public int ValidarUsuario(String usuario, String clave) throws ClassNotFoundException, SQLException {
        int id_rol = 0;

        try {

            //declaramos una variable String y armamos la instruccion sql que nos permitira saber si el usuario es valido o no
           String sql = "SELECT usuarios.id_usuario, usuarios.n_documento_usuario, usuarios.nombres_usuario, usuarios.apellidos_usuario, usuarios.clave_usuario, usuarios.id_rol, rol.nombre_rol, usuarios.id_centro, usuarios.id_area, usuarios.id_ficha, usuarios.id_estado_usuario "
                    + "FROM usuarios "
                    + "INNER JOIN rol ON usuarios.id_rol = rol.id_rol "
                    + "WHERE usuarios.n_documento_usuario = '"+ usuario +"' AND usuarios.clave_usuario = '"+clave+"'";

// con armar la instruccion sql no significa que el usuario este consultado o no
//definimos la consulta con la base de datos nesecitamos 2 objetos 
//
            Statement st = control().createStatement(); // nos permite definir objeto contra la base de datos.
            ResultSet rs = st.executeQuery(sql); // ejecutamos la instruccion sql

            while (rs.next()) { // significa que si devolvio resultados (que el usuario y la clave eran validas)
                id_rol = Integer.parseInt(rs.getString("id_rol"));
                nombre = rs.getString("nombres_usuario");
                apellido = rs.getString("apellidos_usuario");
                id_ficha = rs.getString("id_ficha");
                id_centro = rs.getString("id_centro");
                id_usuario = rs.getString("id_usuario");
                    id_area = rs.getString("id_area");
                 nombre_rol = rs.getString("nombre_rol");

            }

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Usuario_CRUD.class.getName()).log(Level.SEVERE, null, ex);
            //  return "ingreso invalido";
        }
        return id_rol;
    }
    public String mostrarNombreUsuario() {

        String cad = "";
        cad = nombre + " " + apellido;
        return cad;
    }
    public int retornarFicha() {

        int ficha = new Integer(id_ficha);
        return ficha;
    }

    public int retornarCentro() {

        int centro = new Integer(id_centro);
        return centro;

    }
    public int retornarUsuario() {

        int usuario = new Integer(id_usuario);
        return usuario;

    }
    public String mostrarNombreRol(){
        
        String n_rol;
        n_rol = nombre_rol;
        return n_rol;
    }
    
    public int retornarid_area(){
        int area = new Integer(id_area);
        return area;
    }

}
