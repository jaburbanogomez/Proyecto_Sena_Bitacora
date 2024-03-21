/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package conexion_bd;

import static conexion_bd.Usuario_CRUD.nombre;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class Email {

    static String correo = "";

    public boolean enviarCorreo(String para, String cad, String nombre) {

        boolean enviado = false;
        try {
            correo = para;           
            String de = "bitacoraasistencia@gmail.com";
            String clave = "proyectobitacora";
            String mensaje = "Estimado Usuario " + nombre + " " + " Para asignar una nueva contraseña por favor dirijase al siguiente link  ";
            String asunto = "Recuperar clave";
            String host = "smtp.gmail.com";
            Properties prop = System.getProperties();
            prop.put("mail.smtp.starttls.enable", "true");
            prop.put("mail.smtp.host", host);
            prop.put("mail.smtp.user", de);
            prop.put("mail.smtp.password", clave);
            prop.put("mail.smtp.port", 587);
            prop.put("mail.smtp.auth", "true");

            Session sesion = Session.getDefaultInstance(prop, null);
            MimeMessage message = new MimeMessage(sesion);

            message.setFrom(new InternetAddress(de));

            message.addRecipient(Message.RecipientType.TO, new InternetAddress(para));

            message.setSubject(asunto);
            // message.setText(mensaje);
            message.setText(mensaje
                    + "<a href='http://localhost:8080/Proyecto_Sena_Bitacora/INDEX/cambiar_clave.jsp'> Cambiar contraseña </a>", "ISO-8859-1",
                    "html");

            // message.setContent(mensaje,"text/html; charset=utf-8");
            Transport tranport = sesion.getTransport("smtp");
            tranport.connect(host, de, clave);
            tranport.sendMessage(message, message.getAllRecipients());
            tranport.close();

            enviado = true;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return enviado;

    }

    public static String LlevarCorreo() {

        String cad;
        cad = correo;
        return cad;
    }
}
