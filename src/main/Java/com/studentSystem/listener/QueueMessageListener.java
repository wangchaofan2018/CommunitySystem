package com.studentSystem.listener;

import com.alibaba.fastjson.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.jms.JMSException;
import javax.jms.Message;
import javax.jms.MessageListener;
import javax.jms.TextMessage;
@Component("queueMessageListener")
public class QueueMessageListener implements MessageListener {
	@Autowired
	private EmailSender emailSender;
	public void onMessage(Message message) {
		TextMessage tm = (TextMessage) message;
		try {
			System.out.println("QueueMessageListener监听到了文本消息：\t"
					+ tm.getText());
			JSONObject jsonObject = JSONObject.parseObject(tm.getText());
			if(jsonObject.getString("flag")!=null){
				emailSender.sendEmail(jsonObject.getString("email"),jsonObject.getString("username"),jsonObject.getString("associate_name"),jsonObject.getString("flag"));
			}
			if(jsonObject.getString("url")!=null){

				emailSender.sendEmail(jsonObject.getString("email"),jsonObject.getString("username"),jsonObject.getString("url"));
			}

			//do something ...
		} catch (JMSException e) {
			e.printStackTrace();
		}
	}
}