package com.studentSystem.service.impl;

import com.alibaba.fastjson.JSON;
import com.studentSystem.dao.AssociateDao;
import com.studentSystem.model.*;
import com.studentSystem.service.AssociateService;
import org.springframework.jms.core.JmsTemplate;
import org.springframework.jms.core.MessageCreator;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.jms.Destination;
import javax.jms.JMSException;
import javax.jms.Message;
import javax.jms.Session;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service("associateService")
public class AssociateServiceImpl implements AssociateService {
	@Resource
	private AssociateDao associateDao;

	@Override
	public Associate findAssociateById(long id) {
		return associateDao.findById(id);
	}

	@Override
	public void insertOne(long id, String username, String email_address, String password, long time_stamp, String recommend_word, String img_url, String recommend,long user_id) {
		associateDao.insertOne(id,username,email_address,password,time_stamp,recommend_word,img_url,recommend,user_id);
	}

	@Override
	public List<AssociateView> findUnsubscribedAssociate() {
		return associateDao.findUnsubscribed();
	}

	@Resource(name="jmsTemplate")
	private JmsTemplate jmsTemplate;
	@Resource(name = "QueueDestination")
	private Destination destination;

	@Override
	public void updateState(long id, final String email, final String username, final String associate_name) {
		jmsTemplate.send(destination, new MessageCreator() {
			@Override
			public Message createMessage(Session session) throws JMSException {
				Map<String,String> map = new HashMap();
				map.put("email",email);
				map.put("username",username);
				map.put("associate_name",associate_name);
				map.put("flag","true");
				String jsonString = JSON.toJSONString(map);
				return session.createTextMessage(jsonString);
			}
		});
		associateDao.updateState(id);
	}

	@Override
	public void deleteOne(long id, final String email, final String username, final String associate_name) {
		jmsTemplate.send(destination, new MessageCreator() {
			@Override
			public Message createMessage(Session session) throws JMSException {
				Map<String,String> map = new HashMap();
				map.put("email",email);
				map.put("username",username);
				map.put("associate_name",associate_name);
				map.put("flag","false");
				String jsonString = JSON.toJSONString(map);
				return session.createTextMessage(jsonString);
			}
		});
		associateDao.deleteOne(id);
	}

	@Override
	public List<AssociateView> findSubscribedAssociate() {
		return associateDao.findSubscribed();
	}

	@Override
	public void insertApplyMessage(Applicant applicant) {
		associateDao.insertApplicant(applicant);
	}

	@Override
	public List<ApplicantMessage> findMyApplyById(long user_id) {
		return associateDao.findMyApplyById(user_id);
	}

	@Override
	public List<ApplicantMessage> findMyAssociateById(long user_id) {
		return associateDao.findMyAssociateById(user_id);
	}

	@Override
	public Associate findAssociateByEmail(String email_address) {
		return associateDao.findAssociateByEmail(email_address);
	}

	@Override
	public List<AssociateMessage> findApplyMessage(long id) {
		return associateDao.findApplyMessage(id);
	}

	@Override
	public void updateApplyWithY(long apply_id) {
		associateDao.updateApplyWithY(apply_id);
	}

	@Override
	public void updateApplyWithN(long apply_id) {
		associateDao.updateApplyWithN(apply_id);
	}

}
