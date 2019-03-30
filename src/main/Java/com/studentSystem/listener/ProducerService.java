package com.studentSystem.listener;

import com.alibaba.fastjson.JSON;
import org.springframework.jms.core.JmsTemplate;
import org.springframework.jms.core.MessageCreator;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.jms.Destination;
import javax.jms.JMSException;
import javax.jms.Message;
import javax.jms.Session;
import java.util.HashMap;
import java.util.Map;

@Service("producerService")
public class ProducerService {

	@Resource(name = "jmsTemplate")
	private JmsTemplate jmsTemplate;
	@Resource(name = "QueueDestination")
	private Destination destination;
	public void produce(final String url, final String email, final String username){
		jmsTemplate.send(destination,new MessageCreator() {

			@Override
			public Message createMessage(Session session) throws JMSException {
				Map<String,String> map = new HashMap<>();
				map.put("email",email);
				map.put("username",username);
				map.put("url",url);
				String jsonString = JSON.toJSONString(map);
				return session.createTextMessage(jsonString);
			}
		});
	}
	public void produce1(final String associate, final String email, final String username){
		jmsTemplate.send(destination,new MessageCreator() {

			@Override
			public Message createMessage(Session session) throws JMSException {
				Map<String,String> map = new HashMap<>();
				map.put("email",email);
				map.put("username",username);
				map.put("associate",associate);
				String jsonString = JSON.toJSONString(map);
				return session.createTextMessage(jsonString);
			}
		});
	}
}
