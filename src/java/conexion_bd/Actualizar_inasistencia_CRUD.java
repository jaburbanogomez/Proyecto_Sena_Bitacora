/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package conexion_bd;

import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author jorge
 */
public class Actualizar_inasistencia_CRUD extends Conexion_bd {
    
    public void updateInasistencia(Actualizar_inasistencia miInasistencia) throws ClassNotFoundException {

        try {
            String sql = " update inasistencia_aprendiz set "
                    + " fecha_inasistencia ='" + miInasistencia.getFecha_inasistencia()+ "',"
                    + " id_jornada = '" + miInasistencia.getId_jornada()+ "',"
                    + " observacion_inasistencia= '" + miInasistencia.getObservaciones_inasistencia()+ "'"
                    + " where id_registro_inasistencia = '" + miInasistencia.getId_registro_inasistencia()+ "'";

            Statement st = control().createStatement();
            st.executeUpdate(sql);
        } catch (SQLException ex) {
            Logger.getLogger(Actualizar_inasistencia_CRUD.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}
