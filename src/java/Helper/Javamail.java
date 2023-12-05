package Helper;


import java.io.File;
import java.util.Properties;

import jakarta.mail.Authenticator;
import jakarta.mail.Message;
import jakarta.mail.PasswordAuthentication;
import jakarta.mail.Session;
import jakarta.mail.Transport;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;







public class Javamail {

   public static void main(String[] args) {

       System.out.println("preparing to send message ...");
       String message = "Hello , Dear, this is message for security check . ";
       String subject = "Pet Adoption";
       String to = "zaidcoder01@gmail.com";
       String from = "shaikhharish150@gmail.com";

       sendEmail(message, subject, to, from);

   }

   //this is responsible to send email..
   private static void sendEmail(String message, String subject, String to, String from) {

       //Variable for gmail
       String host = "smtp.gmail.com";

       //get the system properties
       Properties properties = System.getProperties();
       System.out.println("PROPERTIES " + properties);

       //setting important information to properties object
       //host set
       properties.put("mail.smtp.host", host);
       properties.put("mail.smtp.port", "465");
       properties.put("mail.smtp.ssl.enable", true);
       properties.put("mail.smtp.auth", true);
       properties.put("mail.smtp.ssl.trust", host);

       //Step 1: to get the session object..
       Session session = Session.getInstance(properties, new Authenticator() {
           @Override
           protected PasswordAuthentication getPasswordAuthentication() {
               return new PasswordAuthentication("shaikhharish150@gmail.com", "vobkudsrbikwizje");
           }

       });

       session.setDebug(true);

       //Step 2 : compose the message [text,multi media]
       MimeMessage m = new MimeMessage(session);

       try {

           //from email
           m.setFrom( new InternetAddress(from));
           //adding recipient to message
           m.addRecipient(Message.RecipientType.TO, new InternetAddress(to));

           //adding subject to message
           m.setSubject(subject);

           //adding text to message
           m.setText(message);

           //send 
           //Step 3 : send the message using Transport class
           Transport.send(m);

           System.out.println("Sent success...................");

       } catch (Exception e) {
           e.printStackTrace();
       }

   }
}