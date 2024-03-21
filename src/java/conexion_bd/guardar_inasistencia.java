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
public class guardar_inasistencia {
    
    private int id_registro_inasistencia;
    private int id_usuario;
    private String fecha_inasistencia;
    private int id_jornada;
    private String observacion_inasistencia;

    public guardar_inasistencia(int id_usuario, String fecha_inasistencia, int id_jornada, String observacion_inasistencia) {
        this.id_usuario = id_usuario;
        this.fecha_inasistencia = fecha_inasistencia;
        this.id_jornada = id_jornada;
        this.observacion_inasistencia = observacion_inasistencia;
    }

    public int getId_registro_inasistencia() {
        return id_registro_inasistencia;
    }

    public void setId_registro_inasistencia(int id_registro_inasistencia) {
        this.id_registro_inasistencia = id_registro_inasistencia;
    }

    public int getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(int id_usuario) {
        this.id_usuario = id_usuario;
    }

    public String getFecha_inasistencia() {
        return fecha_inasistencia;
    }

    public void setFecha_inasistencia(String fecha_inasistencia) {
        this.fecha_inasistencia = fecha_inasistencia;
    }

    public int getId_jornada() {
        return id_jornada;
    }

    public void setId_jornada(int id_jornada) {
        this.id_jornada = id_jornada;
    }

    public String getObservacion_inasistencia() {
        return observacion_inasistencia;
    }

    public void setObservacion_inasistencia(String observacion_inasistencia) {
        this.observacion_inasistencia = observacion_inasistencia;
    }

    
 
}
