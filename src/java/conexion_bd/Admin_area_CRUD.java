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
public class Admin_area_CRUD extends Conexion_bd {

    public Admin_area consultarAdmin_area(String n_documento_usuario) throws ClassNotFoundException {
        try {
            Admin_area miAdmin_area = null;

            String sql = "select * from usuarios where"
                    + " n_documento_usuario='" + n_documento_usuario + "'";
            Statement st = control().createStatement();
            ResultSet rs = st.executeQuery(sql);

            if (rs.next()) {
                miAdmin_area = new Admin_area(
                        rs.getString("n_documento_usuario"),
                        rs.getString("nombres_usuario"),
                        rs.getString("apellidos_usuario"),
                        rs.getString("celular_usuario"),
                        rs.getString("correo_usuario"),
                        rs.getInt("id_rol"),
                        rs.getInt("id_tipo_documento"),
                        rs.getInt("id_area"),
                        rs.getInt("id_estado_usuario")
                );

            }
            return miAdmin_area;
        } catch (SQLException ex) {
            Logger.getLogger(Admin_area_CRUD.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void updateAdmin_area(Admin_area miAdmin) throws ClassNotFoundException {

        try {
            String sql = " update usuarios set "
                    + " n_documento_usuario = '" + miAdmin.getN_documento_usuario() + "',"
                    + " nombres_usuario= '" + miAdmin.getNombres_usuario()+ "',"
                    + " apellidos_usuario= '" + miAdmin.getApellidos_usuario()+ "',"
                    + " celular_usuario = '" + miAdmin.getCelular_usuario()+ "',"
                    + " correo_usuario = '" + miAdmin.getCorreo_usuario()+ "',"
                    + " id_rol= " + miAdmin.getId_rol()+ ","
                    + " id_tipo_documento= " + miAdmin.getId_tipo_documento()+ ","
                    + " id_area= " + miAdmin.getId_area()+ ","
                    + " id_estado_usuario= " + miAdmin.getId_estado_usuario()+ ""
                    + " where id_usuario = " + miAdmin.getId_usuario() + "";

            Statement st = control().createStatement();
            st.executeUpdate(sql);
        } catch (SQLException ex) {
            Logger.getLogger(Admin_area_CRUD.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void nuevo_admin_area(Admin_area miAdmin_area) throws ClassNotFoundException {

        Usuario_CRUD ob = new Usuario_CRUD();
        int centro = 0;
        centro = ob.retornarCentro();

        try {
            String sql = "insert into usuarios ( n_documento_usuario, nombres_usuario, apellidos_usuario, celular_usuario, correo_usuario, id_rol, id_tipo_documento, id_centro, id_area, id_estado_usuario ) values ('"
                    + miAdmin_area.getN_documento_usuario() + "','"
                    + miAdmin_area.getNombres_usuario() + "','"
                    + miAdmin_area.getApellidos_usuario() + "','"
                    + miAdmin_area.getCelular_usuario() + "','"
                    + miAdmin_area.getCorreo_usuario() + "','"
                    + miAdmin_area.getId_rol() + "','"
                    + miAdmin_area.getId_tipo_documento() + "','"
                    + centro + "','"
                    + miAdmin_area.getId_area() + "','"
                    + miAdmin_area.getId_estado_usuario() + "') ";
            Statement st = control().createStatement();

            st.executeUpdate(sql);
        } catch (SQLException ex) {
            Logger.getLogger(Admin_area_CRUD.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
