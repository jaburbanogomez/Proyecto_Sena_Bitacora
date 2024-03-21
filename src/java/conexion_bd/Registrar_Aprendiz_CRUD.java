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
 * @author Juan El Poeta
 */
public class Registrar_Aprendiz_CRUD extends Conexion_bd {

    public Registrar_Aprendiz consultarAprendiz(String n_documento_usuario) throws ClassNotFoundException {
        try {
            Registrar_Aprendiz miAprendiz = null;

            String sql = "select * from usuarios where"
                    + " n_documento_usuario='" + n_documento_usuario + "'";
            Statement st = control().createStatement();
            ResultSet rs = st.executeQuery(sql);

            if (rs.next()) {
                miAprendiz = new Registrar_Aprendiz(
                        rs.getString("n_documento_usuario"),
                        rs.getString("nombres_usuario"),
                        rs.getString("apellidos_usuario"),
                        rs.getString("celular_usuario"),
                        rs.getString("correo_usuario"),
                        rs.getInt("id_rol"),
                        rs.getInt("id_tipo_documento"),
                        rs.getInt("id_ficha"),
                        rs.getInt("id_estado_usuario"));

            }
            return miAprendiz;
        } catch (SQLException ex) {
            Logger.getLogger(Registrar_Aprendiz_CRUD.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void nuevo_Aprendiz(Registrar_Aprendiz miAprendiz) throws ClassNotFoundException {

        try {

            String sql = "insert into usuarios (n_documento_usuario, nombres_usuario,apellidos_usuario, celular_usuario, correo_usuario,id_rol,id_tipo_documento,id_ficha,id_estado_usuario) values ('"
                    + miAprendiz.getN_documento_usuario() + "','"
                    + miAprendiz.getNombres_usuario() + "','"
                    + miAprendiz.getApellidos_usuario() + "','"
                    + miAprendiz.getCelular_usuario() + "','"
                    + miAprendiz.getCorreo_usuario() + "','"
                    + miAprendiz.getId_rol() + "','"
                    + miAprendiz.getId_tipo_documento() + "','"
                    + miAprendiz.getId_ficha() + "','"
                    + miAprendiz.getId_estado_usuario() + "')";
            Statement st = control().createStatement();

            st.executeUpdate(sql);
        } catch (SQLException ex) {
            Logger.getLogger(Registrar_Aprendiz_CRUD.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void updateAprendiz(Registrar_Aprendiz miAprendiz) throws ClassNotFoundException {

        try {
            String sql = " update usuarios set "
                    + " n_documento_usuario = '" + miAprendiz.getN_documento_usuario() + "',"
                    + " nombres_usuario= '" + miAprendiz.getNombres_usuario() + "',"
                    + " apellidos_usuario= '" + miAprendiz.getApellidos_usuario() + "',"
                    + " celular_usuario = '" + miAprendiz.getCelular_usuario() + "',"
                    + " correo_usuario = '" + miAprendiz.getCorreo_usuario() + "',"
                    + " id_rol= " + miAprendiz.getId_rol() + ","
                    + " id_tipo_documento= " + miAprendiz.getId_tipo_documento() + ","
                    + " id_ficha= " + miAprendiz.getId_ficha()+ ","
                    + " id_estado_usuario = " + miAprendiz.getId_estado_usuario() + ""
                    + " where id_usuario = " + miAprendiz.getId_usuario() + "";

            Statement st = control().createStatement();
            st.executeUpdate(sql);
        } catch (SQLException ex) {
            Logger.getLogger(Registrar_Aprendiz_CRUD.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
