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

public class Titulaciones_CRUD extends Conexion_bd {

    public Titulaciones consultarTitulaciones(String nombre_titulacion) throws ClassNotFoundException {
        try {
            Titulaciones miTitulacion = null;

            String sql = "select * from titulacion where"
                    + " nombre_titulacion='" + nombre_titulacion + "'";
            Statement st = control().createStatement();
            ResultSet rs = st.executeQuery(sql);

            if (rs.next()) {
                miTitulacion = new Titulaciones(
                        
                      rs.getString("nombre_titulacion"),
                        rs.getInt("id_area"));
                       
            }
            return miTitulacion;
        } catch (SQLException ex) {
            Logger.getLogger(Titulaciones_CRUD.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
     /*///////modificar titulación//////////////*/
    public void updateTitulacion (Titulaciones miTitulacion) throws ClassNotFoundException {
        
        try {
            String sql = "update titulacion set nombre_titulacion = '" + miTitulacion.getNombre_titulacion() + "',"                    
                    + "id_area= " + miTitulacion.getId_area() + ""
                    + " where id_titulacion = " + miTitulacion.getId_titulacion() + "";
            Statement st = control().createStatement();
            st.executeUpdate(sql);
        } catch (SQLException ex) {
            Logger.getLogger(Titulaciones_CRUD.class.getName()).log(Level.SEVERE, null, ex);
        }
    }   

    public void nuevo_titulacion(Titulaciones miTitulacion) throws ClassNotFoundException {

        try {
       String sql = "insert into titulacion values ("               
               + "null"
               + ",'"+miTitulacion.getNombre_titulacion()+ "', '"+miTitulacion.getId_area()+ "'    ) ";

            Statement st = control().createStatement();
           
            st.executeUpdate(sql);
        } catch (SQLException ex) {
            Logger.getLogger(Titulaciones_CRUD.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
