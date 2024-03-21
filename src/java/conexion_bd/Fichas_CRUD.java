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

public class Fichas_CRUD extends Conexion_bd {

    public Fichas consultarFichas(String ficha_programa) throws ClassNotFoundException {
        try {
            Fichas miFicha = null;

            String sql = "select * from fichas where"
                    + " ficha_programa='" + ficha_programa + "'";
            Statement st = control().createStatement();
            ResultSet rs = st.executeQuery(sql);

            if (rs.next()) {
                miFicha = new Fichas(
                        rs.getString("ficha_programa"),
                        rs.getInt("id_titulacion"));

            }
            return miFicha;
        } catch (SQLException ex) {
            Logger.getLogger(Fichas_CRUD.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    /*///////modificar ficha//////////////*/
    public void updateFicha(Fichas miFicha) throws ClassNotFoundException {

        try {
            String sql = " update fichas set "
                    + " ficha_programa = '" + miFicha.getFicha_programa()+ "',"
                    + " id_titulacion= " + miFicha.getId_titulacion()+ ""
                    + " where id_ficha = " + miFicha.getId_ficha()+ "";

            Statement st = control().createStatement();
            st.executeUpdate(sql);
        } catch (SQLException ex) {
            Logger.getLogger(Fichas_CRUD.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void nuevo_ficha(Fichas miFicha) throws ClassNotFoundException {

        try {
            String sql = "insert into fichas values ("
                    + "null"
                    + " ,'" + miFicha.getFicha_programa() + "' ,'" + miFicha.getId_titulacion() + "' ) ";

            Statement st = control().createStatement();

            st.executeUpdate(sql);
        } catch (SQLException ex) {
            Logger.getLogger(Fichas_CRUD.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
