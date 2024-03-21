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
 * @author jorge
 */
public class Asignar_Titulacion_CRUD extends Conexion_bd {
    
    public Asignar_Titulacion consultarInstructor_ttl(String id_usuario, String id_titulacion) throws ClassNotFoundException {
        try {
            Asignar_Titulacion miTitulacion = null;

            String sql = "SELECT id_titulacion, id_usuario FROM  instructores_titulacion "
                    + "WHERE  id_titulacion = '" + id_titulacion + "' AND  id_usuario = '" + id_usuario + "';";
            Statement st = control().createStatement();
            ResultSet rs = st.executeQuery(sql);

            if (rs.next()) {
                miTitulacion = new Asignar_Titulacion(
                        rs.getInt("id_titulacion"),
                        rs.getInt("id_usuario")
                );

            }
            return miTitulacion;
        } catch (SQLException ex) {
            Logger.getLogger(Asignar_Titulacion_CRUD.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public void updateTitulacion_ins(Actualizar_Titulacion_Instructor miTitulacion) throws ClassNotFoundException {

        try {
            String sql = " update instructores_titulacion set "                    
                    + " id_titulacion = " + miTitulacion.getId_titulacion()+ ""
                    + " where id_instructor_ttl = " + miTitulacion.getId_intructor_ttl()+ "";

            Statement st = control().createStatement();
            st.executeUpdate(sql);
        } catch (SQLException ex) {
            Logger.getLogger(Asignar_Titulacion_CRUD.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    
    
    public void nuevoInstructor_ttl(Asignar_Titulacion miTitulacion) throws ClassNotFoundException {


        try {
            String sql = "insert into instructores_titulacion ( id_titulacion, id_usuario ) values ('"+ miTitulacion.getId_titulacion() + "','" + miTitulacion.getId_usuario() + "') ";
            Statement st = control().createStatement();

            st.executeUpdate(sql);
        } catch (SQLException ex) {
            Logger.getLogger(Asignar_Titulacion_CRUD.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void eliminarTitulacion_ins(Actualizar_Titulacion_Instructor miTitulacion) throws ClassNotFoundException {

        try {
             
            String sql = " DELETE FROM instructores_titulacion where id_instructor_ttl = " + miTitulacion.getId_intructor_ttl()+ "";

            Statement st = control().createStatement();
            st.executeUpdate(sql);
        } catch (SQLException ex) {
            Logger.getLogger(Asignar_Titulacion_CRUD.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    
}
