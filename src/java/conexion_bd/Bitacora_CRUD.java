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
public class Bitacora_CRUD extends Conexion_bd {

    public Bitacora consultarBitacora(String fecha_registro_bitacora,int id_jornada,int id_ficha,int id_usuario) throws ClassNotFoundException {

        try {
            Bitacora miBitacora = null;

            String sql = "   SELECT * FROM bitacora_diaria WHERE fecha_registro_bitacora between '" + fecha_registro_bitacora + "' and '" + fecha_registro_bitacora + "'  AND  bitacora_diaria.id_jornada = '" + id_jornada + "' AND  bitacora_diaria.id_ficha = '" + id_ficha + "' AND bitacora_diaria.id_usuario='"+ id_usuario+"'";
            Statement st = control().createStatement();
            ResultSet rs = st.executeQuery(sql);

            if (rs.next()) {
                miBitacora = new Bitacora(
                        rs.getString("fecha_registro_bitacora"),
                        rs.getInt("id_guia"),
                        rs.getInt("id_jornada"),
                        rs.getString("hora_inicio"),
                        rs.getString("hora_fin"),
                        rs.getString("observaciones_bitacora"),
                        rs.getInt("id_ficha"),
                        rs.getInt("id_usuario"),
                        rs.getString("lugar"));

            }
            return miBitacora;
        } catch (SQLException ex) {
            Logger.getLogger(Bitacora_CRUD.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void updateBitacora(Bitacora miBitacora) throws ClassNotFoundException {
       
        try {
            String sql = " update bitacora_diaria set "
                    + " fecha_registro_bitacora = '" + miBitacora.getFecha_registro_bitacora() + "',"
                    + " id_guia= " + miBitacora.getId_guia() + ","
                    + " id_jornada= " + miBitacora.getId_jornada() + ","
                    + " hora_inicio = '" + miBitacora.getHora_inicio() + "',"
                    + " hora_fin = '" + miBitacora.getHora_fin() + "',"
                    + " observaciones_bitacora = '" + miBitacora.getObservaciones_bitacora() + "',"
                    + " id_ficha= " + miBitacora.getId_ficha() + ","
                    + " id_usuario= " + miBitacora.getId_usuario() + ","
                    + " lugar= '" + miBitacora.getLugar()+ "'"            
                    + " where id_bitacora = " + miBitacora.getId_bitacora() + "";

            Statement st = control().createStatement();
            st.executeUpdate(sql);
        } catch (SQLException ex) {
            Logger.getLogger(Bitacora_CRUD.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void nuevo_bitacora(Bitacora miBitacora) throws ClassNotFoundException {
        Usuario_CRUD ob = new Usuario_CRUD();
        String mo = "";
        mo = ob.mostrarNombreUsuario();
        try {
            String sql = "insert into bitacora_diaria (fecha_registro_bitacora, id_guia, id_jornada, hora_inicio, hora_fin, observaciones_bitacora,id_ficha,id_usuario,lugar,aprendiz_lider) values ('"
                    + miBitacora.getFecha_registro_bitacora() + "','"
                    + miBitacora.getId_guia() + "','"
                    + miBitacora.getId_jornada() + "','"
                    + miBitacora.getHora_inicio() + "','"
                    + miBitacora.getHora_fin() + "','"
                    + miBitacora.getObservaciones_bitacora() + "','"
                    + miBitacora.getId_ficha() + "','"
                    + miBitacora.getId_usuario() + "','"
                    + miBitacora.getLugar() + "','"
                    + mo + "')";
            Statement st = control().createStatement();

            st.executeUpdate(sql);
        } catch (SQLException ex) {
            Logger.getLogger(Bitacora_CRUD.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
