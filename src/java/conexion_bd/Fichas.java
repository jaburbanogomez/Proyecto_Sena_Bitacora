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
public class Fichas {

    private int id_ficha;
    private String ficha_programa;
    private int id_titulacion;

    public Fichas(String ficha_programa, int id_titulacion) {
        this.ficha_programa = ficha_programa;
        this.id_titulacion = id_titulacion;
    }

    public int getId_ficha() {
        return id_ficha;
    }

    public void setId_ficha(int id_ficha) {
        this.id_ficha = id_ficha;
    }

    public String getFicha_programa() {
        return ficha_programa;
    }

    public void setFicha_programa(String ficha_programa) {
        this.ficha_programa = ficha_programa;
    }

    public int getId_titulacion() {
        return id_titulacion;
    }

    public void setId_titulacion(int id_titulacion) {
        this.id_titulacion = id_titulacion;
    }

    

}
