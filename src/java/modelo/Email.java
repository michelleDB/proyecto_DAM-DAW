/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.util.Arrays;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

/**
 *
 * @author Fresita
 */
public class Email {

    String email_emisor = "michelle10barrue@gmail.com";
    String password_email = "Fresita3";

    public boolean enviarEmail(String email_receptor, String tipo, String ruta_fichero, String asunto, String mensaje) {
        Properties props = new Properties();
// Nombre del host de correo, es smtp.gmail.com
        props.setProperty("mail.smtp.host", "smtp.gmail.com");
// TLS si está disponible
        props.setProperty("mail.smtp.starttls.enable", "true");
// Puerto de gmail para envio de correos
        props.setProperty("mail.smtp.port", "587");
// Nombre del usuario
        props.setProperty("mail.smtp.user", email_emisor);
// Si requiere o no usuario y password para conectarse.
        props.setProperty("mail.smtp.auth", "true");
        Session session = Session.getDefaultInstance(props);
// Para obtener un log de salida más extenso
        session.setDebug(true);

        MimeMessage message = new MimeMessage(session);
        try {
            // Quien envia el correo
            message.setFrom(new InternetAddress(email_emisor));
            // A quien va dirigido
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(email_receptor));
            if (tipo.equals("complejo")) {
                System.out.println("mensaje complejo");
                BodyPart texto = new MimeBodyPart();
                MimeMultipart multiParte = new MimeMultipart();
// Texto del mensaje
                texto.setContent(mensaje,"text/html");
                System.out.println(mensaje);
                multiParte.addBodyPart(texto);
                
                texto = new MimeBodyPart();
                 DataSource fds = new FileDataSource("C:\\Users\\Fresita\\Desktop\\PROYECTO DAM-DAW\\IMÁGENES\\logo-gris-rosa-png");
                 texto.setDataHandler(new DataHandler(fds));
                 texto.addHeader("Content-ID","<image>");
                 
                 multiParte.addBodyPart(texto);
                 message.setSubject(asunto);
                 message.setContent(multiParte);
                 
                //BodyPart adjunto = new MimeBodyPart();
// Cargamos la imagen
                //adjunto.setDataHandler(new DataHandler(new FileDataSource("C:/Users/Fresita/Desktop/PROYECTO DAM-DAW/IMÁGENES/logo-gris-rosa-png")));
                //System.out.println(ruta_fichero);
                //adjunto.setFileName("ficheroo-adjunto.png");
                
                
                //multiParte.addBodyPart(adjunto);

                //message.setSubject(asunto);
// Se mete el texto y la foto adjunta.
               // message.setContent(multiParte);
                //System.out.println("mensaje multipoarte "+multiParte);
            } else if (tipo.equals("sencillo")) {
                System.out.println("mensaje sencillo");
                message.setSubject(asunto);
                message.setContent(mensaje, "text/html");
                // message.setText(mensaje);
            }

            Transport t = session.getTransport("smtp");
// Aqui usuario y password de gmail
            t.connect(email_emisor, password_email);
            System.out.println("--> mensaje:  " + message.getContent());
            System.out.println("--> mensaje recipientes:    " + Arrays.toString(message.getAllRecipients()));
            t.sendMessage(message, message.getAllRecipients());
            t.close();
        } catch (MessagingException ex) {
            Logger.getLogger(Email.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("EEROROR" + ex);
        } catch (Exception e) {
            System.out.println("eroor e" + e);
        }

        return true;
    }
}
