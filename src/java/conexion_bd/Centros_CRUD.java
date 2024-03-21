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

public class Centros_CRUD extends Conexion_bd {

    public Centros consultarCentros(String codigo_centro, String nombre_centro) throws ClassNotFoundException {
        try {
            Centros miCentro = null;

            String sql = "select * from centros where"
                    + " codigo_centro='" + codigo_centro + "' or nombre_centro='"+nombre_centro+"'";
            Statement st = control().createStatement();
            ResultSet rs = st.executeQuery(sql);

            if (rs.next()) {
                miCentro = new Centros(
                        rs.getString("codigo_centro"),
                        rs.getString("nombre_centro"),
                        rs.getInt("id_regional"));

            }
            return miCentro;
        } catch (SQLException ex) {
            Logger.getLogger(Centros_CRUD.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    /*///////modificar centro//////////////*/
    public void updatecentro(Centros miCentro) throws ClassNotFoundException {

        try {
            String sql = " update centros set "
                    + " codigo_centro ='" + miCentro.getCodigo_centro() + "',"
                    + " nombre_centro = '" + miCentro.getNombre_centro() + "',"
                    + " id_regional= " + miCentro.getId_regional() + ""
                    + " where id_centro = " + miCentro.getId_centro() + "";

            Statement st = control().createStatement();
            st.executeUpdate(sql);
        } catch (SQLException ex) {
            Logger.getLogger(Centros_CRUD.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void nuevo_centro(Centros miCentro) throws ClassNotFoundException {

        try {
            String sql = "insert into centros values ("
                    + "null" + " ,'" + miCentro.getNombre_centro() + "' , '" + miCentro.getCodigo_centro() + "' , '" + miCentro.getId_regional() + "') ";
            Statement st = control().createStatement();

            st.executeUpdate(sql);
        } catch (SQLException ex) {
            Logger.getLogger(Conexion_bd.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
