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

public class Areas_CRUD extends Conexion_bd {

    public Areas consultarAreas(String nombre_area) throws ClassNotFoundException {
        try {
            Areas miArea = null;

            String sql = "select * from areas where"
                    + " nombre_area='" + nombre_area + "'";
            Statement st = control().createStatement();
            ResultSet rs = st.executeQuery(sql);

            if (rs.next()) {
                miArea = new Areas(
                        rs.getString("nombre_area"));
            }
            return miArea;
        } catch (SQLException ex) {
            Logger.getLogger(Areas_CRUD.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    /*///////modificar areas//////////////*/
    public void updateArea(Areas miArea) throws ClassNotFoundException {
        Usuario_CRUD ob = new Usuario_CRUD();
        int centro;
        centro = ob.retornarCentro();
        try {
            String sql = " update areas set "
                    + " nombre_area ='" + miArea.getNombre_area() + "',"
                    + " id_centro= " + centro + ""
                    + " where id_area = " + miArea.getId_area() + "";

            Statement st = control().createStatement();
            st.executeUpdate(sql);
        } catch (SQLException ex) {
            Logger.getLogger(Areas_CRUD.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void nuevo_area(Areas miArea) throws ClassNotFoundException {
        Usuario_CRUD ob = new Usuario_CRUD();
        int centro;
        centro = ob.retornarCentro();
        try {
            String sql = "insert into areas (nombre_area,id_centro) values ('"
                    + miArea.getNombre_area() + "','"
                    + centro + "')";
            Statement st = control().createStatement();

            st.executeUpdate(sql);
        } catch (SQLException ex) {
            Logger.getLogger(Areas_CRUD.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
