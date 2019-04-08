package com.studentSystem.service.impl;

import com.alibaba.fastjson.JSON;
import com.studentSystem.dao.AssociateDao;
import com.studentSystem.model.*;
import com.studentSystem.service.AssociateService;
import com.studentSystem.utils.GetNowTime;
import com.studentSystem.utils.UUID;
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
import java.util.Set;
import java.util.stream.Collectors;

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

	@Override
	public List<AssociateScoreView> findScoreById(long user_id) {
		return associateDao.findScore(user_id);
	}

	@Override
	public long findUserIdByApplyId(long apply_id) {
		return associateDao.findUserIdByApplyId(apply_id);
	}

	@Override
	public void insertMember(long user_id, long associate_id) {
		long id = UUID.getId();
		associateDao.insertMember(id,user_id,associate_id);

	}

	@Override
	public List<MemberView> findMemberList(long user_id) {
		return associateDao.findMemberList(user_id);
	}

	@Override
	public void updateMemberState(long member_id) {
		associateDao.updateMemberState(member_id);
	}

	@Override
	public EmailMessage findAssociateByMemberId(long member_id) {
		return associateDao.findAssociateByMemberId(member_id);
	}

	@Override
	public List<ActivityView> findActivityByUserId(long user_id) {
		List<ActivityView> list = associateDao.findActivityByUserId(user_id);
		List<ActivityView> nowlist = list.stream().filter(s->s.getActivity_time()> GetNowTime.getTimeStamp()).collect(Collectors.toList());
		return nowlist;
	}

	@Override
	public Set<Long> findAllSetInJoins(long user_id) {
		return associateDao.findAllJoins(user_id);
	}

	@Override
	public List<ActivityView> findActivityInJoins(long user_id) {
		return associateDao.findActivityInJoins(user_id);
	}

	@Override
	public void insertJoins(long id, long activity_id, long user_id) {
		associateDao.insertJoins(id,activity_id,user_id);
	}

	@Override
	public void insertActivity(long id, long associate_id, long time_stamp, String activity_name, String activity_content) {
		associateDao.insertActivity(id,associate_id,time_stamp,activity_name,activity_content);
	}

	@Override
	public void updateActivityJoinsNumber(long activity_id) {
		associateDao.updateActivityJoinsNumber(activity_id);
	}

}
