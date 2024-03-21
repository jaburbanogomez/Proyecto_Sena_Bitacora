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
public class guardar_inasistencia_CRUD extends Conexion_bd{
    
    public guardar_inasistencia consultarInasistencia(String id_jornada, String id_usuario, String fecha_inasistencia) throws ClassNotFoundException {
             
        
        try {
            guardar_inasistencia miInasistencia = null;

            String sql = "select * from inasistencia_aprendiz where id_usuario = '"+id_usuario+"' AND inasistencia_aprendiz.fecha_inasistencia = '"+fecha_inasistencia+"' AND id_jornada = '"+id_jornada+"'";
            Statement st = control().createStatement();
            ResultSet rs = st.executeQuery(sql);

            if (rs.next()) {
                miInasistencia = new guardar_inasistencia(
                        rs.getInt("id_usuario"),
                        rs.getString("fecha_inasistencia"),
                        rs.getInt("id_jornada"),
                        rs.getString("observacion_inasistencia"));

            }
            return miInasistencia;
        } catch (SQLException ex) {
            Logger.getLogger(guardar_inasistencia_CRUD.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public void nuevoInasistencia(guardar_inasistencia miInacistencia) throws ClassNotFoundException {

         Usuario_CRUD ob = new Usuario_CRUD();
        String nombre_instructor = "";
        nombre_instructor = ob.mostrarNombreUsuario();

        try {
            String sql = "insert into inasistencia_aprendiz (id_usuario, fecha_inasistencia, id_jornada, observacion_inasistencia, nombre_instructor ) values ('"+ miInacistencia.getId_usuario() + "','" + miInacistencia.getFecha_inasistencia() + "','" + miInacistencia.getId_jornada() + "','" + miInacistencia.getObservacion_inasistencia() + "','" + nombre_instructor + "') ";
            Statement st = control().createStatement();

            st.executeUpdate(sql);
        } catch (SQLException ex) {
            Logger.getLogger(guardar_inasistencia_CRUD.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    
}