package com.studentSystem.listener;

import org.springframework.stereotype.Component;

import javax.mail.*;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

@Component
public class EmailSender {
	public void sendEmail(String email,String username,String associate_name,String flag){
		try{
			Properties props = new Properties();
			// 开启debug调试
			props.setProperty("mail.debug", "true");
			// 发送服务器需要身份验证
			props.setProperty("mail.smtp.auth", "true");
			// 设置邮件服务器主机名
			props.setProperty("mail.host", "smtp.163.com");
			// 发送邮件协议名称
			props.setProperty("mail.transport.protocol", "smtp");

			props.setProperty("mail.smtp.port","25");

			Session session = Session.getDefaultInstance(props);
			Message msg = new MimeMessage(session);

				StringBuilder sb = new StringBuilder();
				if(flag.equals("true")){
					sb.append("亲爱的"+username+":\n 恭喜你！你申请的社团“"+associate_name+"”已通过审核，请通过邮箱账号与注册密码在社团管理处登陆");
				}else{
					sb.append("亲爱的"+username+":\n 很遗憾 你申请的社团“"+associate_name+"”未通过审核，请仔细阅读社团申请条例后再次申请");
				}
				msg.setText(sb.toString());
				msg.setFrom(new InternetAddress("wangchaofan2018@163.com"));
				msg.addRecipient(Message.RecipientType.TO, new InternetAddress(email));
				msg.setSubject("通知邮件");
				msg.saveChanges();
				Transport transport = session.getTransport();
				transport.connect("smtp.163.com","wangchaofan2018@163.com","wy2019sqmwcf");
				transport.sendMessage(msg,msg.getAllRecipients());
				transport.close();


		} catch (AddressException e) {
			e.printStackTrace();
		} catch (NoSuchProviderException e) {
			e.printStackTrace();
		} catch (MessagingException e) {
			e.printStackTrace();
		}
	}
	public void sendEmail(String email,String username,String url){
		try{
			Properties props = new Properties();
			// 开启debug调试
			props.setProperty("mail.debug", "true");
			// 发送服务器需要身份验证
			props.setProperty("mail.smtp.auth", "true");
			// 设置邮件服务器主机名
			props.setProperty("mail.host", "smtp.163.com");
			// 发送邮件协议名称
			props.setProperty("mail.transport.protocol", "smtp");

			props.setProperty("mail.smtp.port","25");

			Session session = Session.getDefaultInstance(props);
			Message msg = new MimeMessage(session);

//			StringBuilder sb = new StringBuilder();
//			sb.append("亲爱的"+username+"同学 你好！\n恭喜您成功注册本系统，点击下面链接即可完成激活<h1>此邮件为学生管理系统发送的激活邮箱，若非本人操作，请忽视！</h1><h3><a href=''></a></h3>","text/html;charset=UTF-8");
//			msg.setText(sb.toString());
			msg.setFrom(new InternetAddress("wangchaofan2018@163.com"));
			msg.addRecipient(Message.RecipientType.TO, new InternetAddress(email));
			msg.setSubject("激活邮箱");
			msg.setContent("亲爱的"+username+"同学 你好！\n恭喜您成功注册本系统，点击下面链接即可完成激活<h2>此邮件为学生管理系统发送的激活邮箱，若非本人操作，请忽视！</h2><h1><a href='"+url+"'>账号激活</a></h1>","text/html;charset=UTF-8");
			msg.saveChanges();
			Transport transport = session.getTransport();
			transport.connect("smtp.163.com","wangchaofan2018@163.com","wy2019sqmwcf");
			transport.sendMessage(msg,msg.getAllRecipients());
			transport.close();


		} catch (AddressException e) {
			e.printStackTrace();
		} catch (NoSuchProviderException e) {
			e.printStackTrace();
		} catch (MessagingException e) {
			e.printStackTrace();
		}
	}
}
