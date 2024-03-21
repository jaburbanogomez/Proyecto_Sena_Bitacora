/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package conexion_bd;

/**
 *
 * @author jorge
 */
public class Titulaciones {
    private int id_titulacion;
    private String nombre_titulacion;
    private int id_area;

    public Titulaciones(String nombre_titulacion, int id_area) {
        this.nombre_titulacion = nombre_titulacion;
        this.id_area = id_area;
    }

    public int getId_titulacion() {
        return id_titulacion;
    }

    public void setId_titulacion(int id_titulacion) {
        this.id_titulacion = id_titulacion;
    }

    public String getNombre_titulacion() {
        return nombre_titulacion;
    }

    public void setNombre_titulacion(String nombre_titulacion) {
        this.nombre_titulacion = nombre_titulacion;
    }

    public int getId_area() {
        return id_area;
    }

    public void setId_area(int id_area) {
        this.id_area = id_area;
    }

    
   
}
