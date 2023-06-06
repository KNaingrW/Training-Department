package com.trainingprogram.utils;
import java.util.Date;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.trainingprogram.model.Course;
import com.trainingprogram.model.CourseRegister;
import com.trainingprogram.model.CourseTime;

public class EmailSendUtils {

	public void SendEmail(CourseRegister course) {
		
		String coureName=course.getCourseName();
		
		String courseTime = course.getTime();
		String to = course.getEmail();

		
		
			
		   final String username ="murali07954@gmail.com";
	       final String password = "uibtejtstloqjgku"; //app code copy and past here

	        Properties prop = new Properties();
			prop.put("mail.smtp.host", "smtp.gmail.com");
	        prop.put("mail.smtp.port", "587");
	        prop.put("mail.smtp.auth", "true");
	        prop.put("mail.smtp.starttls.enable", "true"); //TLS
	        prop.put("mail.smtp.ssl.trust", "smtp.gmail.com");
	        prop.put("mail.smtp.ssl.protocols", "TLSv1.2");
	        Session session = Session.getInstance(prop,
	                new javax.mail.Authenticator() {
	                    protected PasswordAuthentication getPasswordAuthentication() {
	                        return new PasswordAuthentication(username, password);
	                    }
	                });

	        try {

	            Message message = new MimeMessage(session);
	            message.setFrom(new InternetAddress("murali07954@gmail.com"));
	            message.setRecipients(
	                    Message.RecipientType.TO,
	                    InternetAddress.parse(to)
	            );
	            System.out.print(courseTime);
	            message.setSubject("Information About the Registered Session ");
	            message.setText("Dear participant,\n\nGreetings from the Training Department!"
	            		+ "\n\nWe would like to extend our appreciation for registering to attend the " 
	            		+ coureName + " course.\n\nYour dedication towards learning new skills is commendable."
	            		+ "\n\nAs you have selected to attend the " + coureName + " session, we are pleased "
	            		+ "to inform you that your schedule has been finalized from " + courseTime + ".\n\n"
	            		+ "Please note that this session will be held in the " + coureName + " classroom.\n\nWe look forward "
	            		+ "to seeing you in the class and hope that this training will be an enriching experience for you.\n\n"
	            		+ "If you have any questions or concerns, please do not hesitate to contact us.\n\nBest regards,\n\n"
	            		+ "The Training Department.");
	            

	            Transport.send(message);
	          

	           
	        } catch (MessagingException e) {
	            e.printStackTrace();
	            
	        }
	      
	}
	
	
	
}
