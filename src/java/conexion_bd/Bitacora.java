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
public class Bitacora {
   
   private int id_bitacora;
   private String fecha_registro_bitacora;
   private int id_guia;
   private int id_jornada;
   private String hora_inicio;
   private String hora_fin;
   private String observaciones_bitacora;
   private int id_ficha;
   private int id_usuario;
   private String lugar;


    public Bitacora(String fecha_registro_bitacora, int id_guia, int id_jornada, String hora_inicio, String hora_fin, String observaciones_bitacora, int id_ficha, int id_usuario, String lugar) {
        this.fecha_registro_bitacora = fecha_registro_bitacora;
        this.id_guia = id_guia;
        this.id_jornada = id_jornada;
        this.hora_inicio = hora_inicio;
        this.hora_fin = hora_fin;
        this.observaciones_bitacora = observaciones_bitacora;
        this.id_ficha = id_ficha;
        this.id_usuario = id_usuario;
        this.lugar = lugar;
 
    }

    public int getId_bitacora() {
        return id_bitacora;
    }

    public void setId_bitacora(int id_bitacora) {
        this.id_bitacora = id_bitacora;
    }

    public String getFecha_registro_bitacora() {
        return fecha_registro_bitacora;
    }

    public void setFecha_registro_bitacora(String fecha_registro_bitacora) {
        this.fecha_registro_bitacora = fecha_registro_bitacora;
    }

    public int getId_guia() {
        return id_guia;
    }

    public void setId_guia(int id_guia) {
        this.id_guia = id_guia;
    }

    public int getId_jornada() {
        return id_jornada;
    }

    public void setId_jornada(int id_jornada) {
        this.id_jornada = id_jornada;
    }

    public String getHora_inicio() {
        return hora_inicio;
    }

    public void setHora_inicio(String hora_inicio) {
        this.hora_inicio = hora_inicio;
    }

    public String getHora_fin() {
        return hora_fin;
    }

    public void setHora_fin(String hora_fin) {
        this.hora_fin = hora_fin;
    }

    public String getObservaciones_bitacora() {
        return observaciones_bitacora;
    }

    public void setObservaciones_bitacora(String observaciones_bitacora) {
        this.observaciones_bitacora = observaciones_bitacora;
    }

    public int getId_ficha() {
        return id_ficha;
    }

    public void setId_ficha(int id_ficha) {
        this.id_ficha = id_ficha;
    }

    public int getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(int id_usuario) {
        this.id_usuario = id_usuario;
    }

    public String getLugar() {
        return lugar;
    }

    public void setLugar(String lugar) {
        this.lugar = lugar;
    }

    

}