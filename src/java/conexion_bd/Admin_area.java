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
public class Admin_area {
    
    private int id_usuario;
   private String n_documento_usuario;
   private String nombres_usuario;
   private String apellidos_usuario;
   private String celular_usuario;
   private String correo_usuario;
   private int id_rol;
   private int id_tipo_documento;
   private int id_area;
   private int id_estado_usuario;

    public Admin_area(String n_documento_usuario, String nombres_usuario, String apellidos_usuario, String celular_usuario, String correo_usuario, int id_rol, int id_tipo_documento, int id_area, int id_estado_usuario) {
        this.n_documento_usuario = n_documento_usuario;
        this.nombres_usuario = nombres_usuario;
        this.apellidos_usuario = apellidos_usuario;
        this.celular_usuario = celular_usuario;
        this.correo_usuario = correo_usuario;
        this.id_rol = id_rol;
        this.id_tipo_documento = id_tipo_documento;
        this.id_area = id_area;
        this.id_estado_usuario = id_estado_usuario;
    }

    public int getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(int id_usuario) {
        this.id_usuario = id_usuario;
    }

    public String getN_documento_usuario() {
        return n_documento_usuario;
    }

    public void setN_documento_usuario(String n_documento_usuario) {
        this.n_documento_usuario = n_documento_usuario;
    }

    public String getNombres_usuario() {
        return nombres_usuario;
    }

    public void setNombres_usuario(String nombres_usuario) {
        this.nombres_usuario = nombres_usuario;
    }

    public String getApellidos_usuario() {
        return apellidos_usuario;
    }

    public void setApellidos_usuario(String apellidos_usuario) {
        this.apellidos_usuario = apellidos_usuario;
    }

    public String getCelular_usuario() {
        return celular_usuario;
    }

    public void setCelular_usuario(String celular_usuario) {
        this.celular_usuario = celular_usuario;
    }

    public String getCorreo_usuario() {
        return correo_usuario;
    }

    public void setCorreo_usuario(String correo_usuario) {
        this.correo_usuario = correo_usuario;
    }

    public int getId_rol() {
        return id_rol;
    }

    public void setId_rol(int id_rol) {
        this.id_rol = id_rol;
    }

    public int getId_tipo_documento() {
        return id_tipo_documento;
    }

    public void setId_tipo_documento(int id_tipo_documento) {
        this.id_tipo_documento = id_tipo_documento;
    }

    public int getId_area() {
        return id_area;
    }

    public void setId_area(int id_area) {
        this.id_area = id_area;
    }

    public int getId_estado_usuario() {
        return id_estado_usuario;
    }

    public void setId_estado_usuario(int id_estado_usuario) {
        this.id_estado_usuario = id_estado_usuario;
    }

   
    
}
