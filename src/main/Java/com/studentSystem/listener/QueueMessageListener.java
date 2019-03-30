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
			if(jsonObject.getString("associate")!=null){
				StringBuilder sb = new StringBuilder();
				sb.append("亲爱的"+jsonObject.getString("username")+"同学，你好！\n"+"  很高兴，我们与你相遇，在这个社团里。我相信，你会在我们这里学到很多，留下你来过的痕迹。\n"+"                   "+jsonObject.getString("associate"));
				String letter = sb.toString();
				emailSender.sendEmail(jsonObject.getString("email"),letter);
			}

			//do something ...
		} catch (JMSException e) {
			e.printStackTrace();
		}
	}
}