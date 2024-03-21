/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package conexion_bd;

import java.io.File;
import java.sql.ResultSet;
import java.sql.Statement;
import jxl.Sheet;
import jxl.Workbook;
import jxl.*;

/**
 *
 * @author daniel
 */
public class leerArchivoExcel_Instructor extends Conexion_bd {

    String n_Documento;
    String nombre;
    String apellidos;   
    String celular;
    String email;
    String tipo_documento;
    String document;
    String cedula_bd[];
    int bandera=0;
    int i = 0;

    public int leerArchivoExcel(String archivoDestino) {
          Usuario_CRUD ob = new Usuario_CRUD();
        int centro;
        centro = ob.retornarCentro();
        int contador = 1;
        try {

            Workbook archivoExcel = Workbook.getWorkbook(new File(archivoDestino));

            for (int hojas = 0; hojas < archivoExcel.getNumberOfSheets(); hojas++) {
                Sheet hoja = archivoExcel.getSheet(hojas);
                int numColumnas = hoja.getColumns();
                int numFilas = hoja.getRows();
                String data;
                String ce = "";
                for (int fila = 1; fila < numFilas; fila++) {
                    jxl.Cell cel = hoja.getCell(1, fila);
                
                    ce = cel.getContents();
                  
                    int a = 0;

                    String sqls = "select n_documento_usuario from usuarios where n_documento_usuario='" + ce + "'";
                    Statement stt = control().createStatement();
                    ResultSet rs = stt.executeQuery(sqls);

                    while (rs.next()) {

                        a++;

                    }

                    for (int columna = 1; columna < numColumnas; columna++) {
                        data = hoja.getCell(columna, fila).getContents();
                       // System.out.println(data + " ");

                        switch (contador) {

                            case 1:
                                n_Documento = data;

                                contador++;

                                break;
                            case 2:
                                nombre = data;

                                contador++;

                                break;
                            case 3:
                                apellidos = data;

                                contador++;

                                break;

                            case 4:
                                celular = data;

                               contador++;

                                break;
                            case 5:
                                email = data;

                                contador++;

                                break;

                            default:
                                contador = 1;
                        }

                    }

                    System.out.println("\n");
                    if (a != 0) {
                     bandera=1;
                    }else{
                        
                    

                    String sql = "INSERT INTO usuarios(n_documento_usuario,nombres_usuario,apellidos_usuario,celular_usuario,correo_usuario,id_rol,id_tipo_documento,id_centro,id_estado_usuario)  VALUES ('" + n_Documento + "','" + nombre + "','" +apellidos + "','" + celular + "','" + email + "','" + 4 + "','" + 1 + "','" + centro + "','" + 1 + "')";
                    Statement st = control().createStatement();
                    st.executeUpdate(sql);
                    bandera=0;
                    }
                }
            }            
            
            
        } catch (Exception err) {
            err.printStackTrace();
        }
        return bandera;
    }
}
