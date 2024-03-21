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
public class Actualizar_Titulacion_Instructor {
    
     private int id_intructor_ttl;
    private int id_titulacion;

    public Actualizar_Titulacion_Instructor(int id_titulacion) {
        this.id_titulacion = id_titulacion;
    }

    public int getId_intructor_ttl() {
        return id_intructor_ttl;
    }

    public void setId_intructor_ttl(int id_intructor_ttl) {
        this.id_intructor_ttl = id_intructor_ttl;
    }

    public int getId_titulacion() {
        return id_titulacion;
    }

    public void setId_titulacion(int id_titulacion) {
        this.id_titulacion = id_titulacion;
    }
    
    
    
}
