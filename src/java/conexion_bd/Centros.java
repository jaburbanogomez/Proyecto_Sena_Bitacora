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
public class Centros {
   
    private int id_centro;
    private String codigo_centro;
    private String nombre_centro;
    private int id_regional;

    public Centros(String codigo_centro, String nombre_centro, int id_regional) {
        this.codigo_centro = codigo_centro;
        this.nombre_centro = nombre_centro;
        this.id_regional = id_regional;
    }

    public int getId_centro() {
        return id_centro;
    }

    public void setId_centro(int id_centro) {
        this.id_centro = id_centro;
    }

    public String getCodigo_centro() {
        return codigo_centro;
    }

    public void setCodigo_centro(String codigo_centro) {
        this.codigo_centro = codigo_centro;
    }

    public String getNombre_centro() {
        return nombre_centro;
    }

    public void setNombre_centro(String nombre_centro) {
        this.nombre_centro = nombre_centro;
    }

    public int getId_regional() {
        return id_regional;
    }

    public void setId_regional(int id_regional) {
        this.id_regional = id_regional;
    }
   

   
    
}

