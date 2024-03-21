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
public class CRUD_Aprendiz extends Conexion_bd{
     public void updateAprendiz(Aprendiz miAprendiz) throws ClassNotFoundException {

        try {
            String sql = " update usuarios set "                  
                    + " id_rol= " + miAprendiz.getId_rol()+ ""
                    + " where id_usuario = " + miAprendiz.getId_usuario() + "";

            Statement st = control().createStatement();
            st.executeUpdate(sql);
        } catch (SQLException ex) {
            Logger.getLogger(CRUD_Aprendiz.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    
}
