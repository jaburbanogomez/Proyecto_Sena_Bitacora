/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package conexion_bd;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author jorge
 */
public class Conexion_bd {

    // vamos a crear un objeto privado connetion de la clase javasql
// private Connection cnn;
//crear un metodo constructor que cuando exista una connetion nos abra la base de datos
    public static PreparedStatement prest = null;
    public static CallableStatement cllst = null;
    public static Statement st = null;
    public static ResultSet rt = null;
    public static Connection con=null;
    public Connection control() throws ClassNotFoundException {

        try {

            //conexion a la base de datos
            Class.forName("com.mysql.jdbc.Driver");
            //Definios una variable llamada db que va ha ser un string de conexion a la base de datos
//            String db = ("jdbc:mysql://localhost:3306/prueba_conexion","root","sena");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bitacora_final", "root", "sena");

        } catch (SQLException ex) {
            Logger.getLogger(Conexion_bd.class.getName()).log(Level.SEVERE, null, ex);

        }
        return con;
    }
 public void cerrarconexion() throws ClassNotFoundException {

        try {
            control().close();
        } catch (SQLException ex) {
            Logger.getLogger(Conexion_bd.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
}
