package com.uosalsa.controller;


import java.util.Properties;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.stereotype.Service;

@Service
public class UoSalsaMailingService {

	/**
	 * This method will send compose and send the message
	 * */
	public void sendMail(String to, String subject, String body) {
		Properties props = new Properties();
		props.put("mail.smtp.user", "uosalsa");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "25");
		props.put("mail.debug", "true");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.EnableSSL.enable", "true");
		props.setProperty("mail.smtp.socketFactory.class",
				"javax.net.ssl.SSLSocketFactory");
		props.setProperty("mail.smtp.socketFactory.fallbac k", "false");
		props.setProperty("mail.smtp.port", "465");
		props.setProperty("mail.smtp.socketFactory.port", "465");
		Session session = Session.getInstance(props,
				new javax.mail.Authenticator() {
					protected PasswordAuthentication getPasswordAuthentication() {
						return new PasswordAuthentication(
								"sarjak.shah.s@gmail.com", "9898756121");
					}
				});
		try {
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress("sarjak.shah.s@gmail.com"));
			message.setRecipients(Message.RecipientType.TO, InternetAddress
					.parse(to));
			message.setSubject(subject);
			message.setText(body);
			message.setHeader("Content-Type" , "text/html" );
			Transport.send(message);
			System.out.println("Done");

		} catch (Exception e) {
			e.printStackTrace();

		}
	}
}

