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

public class Regionales_CRUD extends Conexion_bd {

    public Regionales consultarRegionales(String codigo_regional, String nombre_regional) throws ClassNotFoundException {
        try {
            Regionales miRegional = null;

            String sql = "select * from regional where"
                    + " codigo_regional='" + codigo_regional + "' OR regional.nombre_regional='"+nombre_regional+"'";
            Statement st = control().createStatement();
            ResultSet rs = st.executeQuery(sql);

            if (rs.next()) {
                miRegional = new Regionales(
                    
                        rs.getString("codigo_regional"),
                        rs.getString("nombre_regional"),
                        rs.getString("direccion_regional"),
                        rs.getString("correo_regional"),
                        rs.getString("telefono_regional"),
                        rs.getString("codigo_municipio"));

            }
            return miRegional;
        } catch (SQLException ex) {
            Logger.getLogger(Regionales_CRUD.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
     public void updateRegional(Regionales miRegional) throws ClassNotFoundException {
        
        try {
            String sql = "update regional set codigo_regional = '" + miRegional.getCodigo_regional() + "',"
                    + "nombre_regional ='" + miRegional.getNombre_regional() + "',"
                    + "direccion_regional ='" + miRegional.getDireccion_regional() + "',"
                    + "correo_regional ='" + miRegional.getCorreo_regional() + "',"
                    + "telefono_regional ='" + miRegional.getTelefono_regional() + "',"
                    + "codigo_municipio= '" + miRegional.getCodigo_municipio() + "'"
                    + " where id_regional= " + miRegional.getId_regional() + "";

            Statement st = control().createStatement();
            st.executeUpdate(sql);
        } catch (SQLException ex) {
            Logger.getLogger(Regionales_CRUD.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void nuevo_regional(Regionales miRegional) throws ClassNotFoundException {

        try {
            String sql = "insert into regional values ("
                    + "null"
                    + ",'" + miRegional.getCodigo_regional() + "','" + miRegional.getNombre_regional() + "','" + miRegional.getDireccion_regional() + "','"
                    + miRegional.getCorreo_regional() + "','"
                    + miRegional.getTelefono_regional()+ "','" + miRegional.getCodigo_municipio() + "') ";

            Statement st = control().createStatement();

            st.executeUpdate(sql);
        } catch (SQLException ex) {
            Logger.getLogger(Regionales_CRUD.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
