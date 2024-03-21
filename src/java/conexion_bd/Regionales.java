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
public class Regionales {
    
    private int id_regional;
    private String codigo_regional;
    private String nombre_regional;
    private String direccion_regional;
    private String correo_regional;
    private String telefono_regional;
    private String codigo_municipio;

    public Regionales(String codigo_regional, String nombre_regional, String direccion_regional, String correo_regional, String telefono_regional, String codigo_municipio) {
        this.codigo_regional = codigo_regional;
        this.nombre_regional = nombre_regional;
        this.direccion_regional = direccion_regional;
        this.correo_regional = correo_regional;
        this.telefono_regional = telefono_regional;
       
        this.codigo_municipio = codigo_municipio;
    }

    public int getId_regional() {
        return id_regional;
    }

    public void setId_regional(int id_regional) {
        this.id_regional = id_regional;
    }

    public String getCodigo_regional() {
        return codigo_regional;
    }

    public void setCodigo_regional(String codigo_regional) {
        this.codigo_regional = codigo_regional;
    }

    public String getNombre_regional() {
        return nombre_regional;
    }

    public void setNombre_regional(String nombre_regional) {
        this.nombre_regional = nombre_regional;
    }

    public String getDireccion_regional() {
        return direccion_regional;
    }

    public void setDireccion_regional(String direccion_regional) {
        this.direccion_regional = direccion_regional;
    }

    public String getCorreo_regional() {
        return correo_regional;
    }

    public void setCorreo_regional(String correo_regional) {
        this.correo_regional = correo_regional;
    }

    public String getTelefono_regional() {
        return telefono_regional;
    }

    public void setTelefono_regional(String telefono_regional) {
        this.telefono_regional = telefono_regional;
    }

 
    public String getCodigo_municipio() {
        return codigo_municipio;
    }

    public void setCodigo_municipio(String codigo_municipio) {
        this.codigo_municipio = codigo_municipio;
    }

    
  

}
