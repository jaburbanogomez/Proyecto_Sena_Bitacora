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
public class Cordinador_CRUD extends Conexion_bd {
    
    public Cordinador consultarCordinador(String n_documento_usuario) throws ClassNotFoundException {
        try {
            Cordinador miCordinador = null;

            String sql = "select * from usuarios where"
                    + " n_documento_usuario='" + n_documento_usuario + "'";
            Statement st = control().createStatement();
            ResultSet rs = st.executeQuery(sql);

            if (rs.next()) {
                miCordinador = new Cordinador(
                        rs.getString("n_documento_usuario"),
                        rs.getString("nombres_usuario"),
                        rs.getString("apellidos_usuario"),
                        rs.getString("celular_usuario"),
                        rs.getString("correo_usuario"),
                        rs.getInt("id_rol"),
                        rs.getInt("id_tipo_documento"),
                        rs.getInt("id_estado_usuario")
                );

            }
            return miCordinador;
        } catch (SQLException ex) {
            Logger.getLogger(Cordinador_CRUD.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void updateCordinador(Cordinador miCordinador) throws ClassNotFoundException {

        try {
            String sql = " update usuarios set "
                    + " n_documento_usuario = '" + miCordinador.getN_documento_usuario() + "',"
                    + " nombres_usuario= '" + miCordinador.getNombres_usuario()+ "',"
                    + " apellidos_usuario= '" + miCordinador.getApellidos_usuario()+ "',"
                    + " celular_usuario = '" + miCordinador.getCelular_usuario()+ "',"
                    + " correo_usuario = '" + miCordinador.getCorreo_usuario()+ "',"
                    + " id_rol= " + miCordinador.getId_rol()+ ","
                    + " id_tipo_documento= " + miCordinador.getId_tipo_documento()+ ","
                    + " id_estado_usuario= " + miCordinador.getId_estado_usuario()+ ""
                    + " where id_usuario = " + miCordinador.getId_usuario() + "";

            Statement st = control().createStatement();
            st.executeUpdate(sql);
        } catch (SQLException ex) {
            Logger.getLogger(Cordinador_CRUD.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void nuevoCordinador(Cordinador miCordinador) throws ClassNotFoundException {

        Usuario_CRUD ob = new Usuario_CRUD();
        int centro = 0;
        centro = ob.retornarCentro();

        try {
            String sql = "insert into usuarios ( n_documento_usuario, nombres_usuario, apellidos_usuario, celular_usuario, correo_usuario, id_rol, id_tipo_documento, id_centro, id_estado_usuario ) values ('"
                    + miCordinador.getN_documento_usuario() + "','"
                    + miCordinador.getNombres_usuario() + "','"
                    + miCordinador.getApellidos_usuario()+ "','"
                    + miCordinador.getCelular_usuario() + "','"
                    + miCordinador.getCorreo_usuario() + "','"
                    + miCordinador.getId_rol() + "','"
                    + miCordinador.getId_tipo_documento() + "','"
                    + centro + "','"
                    + miCordinador.getId_estado_usuario() + "') ";
            Statement st = control().createStatement();

            st.executeUpdate(sql);
        } catch (SQLException ex) {
            Logger.getLogger(Cordinador_CRUD.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}
