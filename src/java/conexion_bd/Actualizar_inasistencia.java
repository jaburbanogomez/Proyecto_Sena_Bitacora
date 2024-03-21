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
public class Actualizar_inasistencia {
    
    private int id_registro_inasistencia;
    private String fecha_inasistencia; 
    private int  id_jornada;
    private String observaciones_inasistencia;

    public Actualizar_inasistencia(String fecha_inasistencia, int id_jornada, String observaciones_inasistencia) {
        this.fecha_inasistencia = fecha_inasistencia;
        this.id_jornada = id_jornada;
        this.observaciones_inasistencia = observaciones_inasistencia;
    }

    public int getId_registro_inasistencia() {
        return id_registro_inasistencia;
    }

    public void setId_registro_inasistencia(int id_registro_inasistencia) {
        this.id_registro_inasistencia = id_registro_inasistencia;
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

    public String getObservaciones_inasistencia() {
        return observaciones_inasistencia;
    }

    public void setObservaciones_inasistencia(String observaciones_inasistencia) {
        this.observaciones_inasistencia = observaciones_inasistencia;
    }
    
    
    
}
