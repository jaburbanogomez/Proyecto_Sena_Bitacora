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
public class Instructores_CRUD extends Conexion_bd {

    public Instructores consultarInstructor(String n_documento_usuario) throws ClassNotFoundException {
        try {
            Instructores miInstructor = null;

            String sql = "select * from usuarios where"
                    + " n_documento_usuario='" + n_documento_usuario + "'";
            Statement st = control().createStatement();
            ResultSet rs = st.executeQuery(sql);

            if (rs.next()) {
                miInstructor = new Instructores(
                        rs.getString("n_documento_usuario"),
                        rs.getString("nombres_usuario"),
                        rs.getString("apellidos_usuario"),
                        rs.getString("celular_usuario"),
                        rs.getString("correo_usuario"),
                        rs.getInt("id_rol"),
                        rs.getInt("id_tipo_documento"),
                        rs.getInt("id_estado_usuario"));

            }
            return miInstructor;
        } catch (SQLException ex) {
            Logger.getLogger(Instructores_CRUD.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void nuevo_instructor(Instructores miInstructor) throws ClassNotFoundException {
        Usuario_CRUD ob = new Usuario_CRUD();
        int centro;
        centro = ob.retornarCentro();
        try {

            String sql = "insert into usuarios (n_documento_usuario, nombres_usuario,apellidos_usuario, celular_usuario, correo_usuario,id_rol,id_tipo_documento,id_centro,id_estado_usuario) values ('"
                    + miInstructor.getN_documento_usuario() + "','"
                    + miInstructor.getNombres_usuario() + "','"
                    + miInstructor.getApellidos_usuario() + "','"
                    + miInstructor.getCelular_usuario() + "','"
                    + miInstructor.getCorreo_usuario() + "','"
                    + miInstructor.getId_rol() + "','"
                    + miInstructor.getId_tipo_documento() + "','"
                    + centro + "','"
                    + miInstructor.getId_estado_usuario() + "')";
            Statement st = control().createStatement();

            st.executeUpdate(sql);
        } catch (SQLException ex) {
            Logger.getLogger(Instructores_CRUD.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void updateInstructor(Instructores miInstructor) throws ClassNotFoundException {

        Usuario_CRUD ob = new Usuario_CRUD();
        int centro;
        centro = ob.retornarCentro();
        try {
            String sql = " update usuarios set "
                    + " n_documento_usuario = '" + miInstructor.getN_documento_usuario() + "',"
                    + " nombres_usuario= '" + miInstructor.getNombres_usuario() + "',"
                    + " apellidos_usuario= '" + miInstructor.getApellidos_usuario() + "',"
                    + " celular_usuario = '" + miInstructor.getCelular_usuario() + "',"
                    + " correo_usuario = '" + miInstructor.getCorreo_usuario() + "',"
                    + " id_rol= " + miInstructor.getId_rol() + ","
                    + " id_tipo_documento= " + miInstructor.getId_tipo_documento() + ","
                    + " id_centro = " + centro + ","
                    + " id_estado_usuario = " + miInstructor.getId_estado_usuario() + ""
                    + " where id_usuario = " + miInstructor.getId_usuario() + "";

            Statement st = control().createStatement();
            st.executeUpdate(sql);
        } catch (SQLException ex) {
            Logger.getLogger(Instructores_CRUD.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
