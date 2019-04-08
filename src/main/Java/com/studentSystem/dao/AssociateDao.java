package com.studentSystem.dao;

import com.studentSystem.model.*;

import java.util.List;
import java.util.Set;

public interface AssociateDao {

	Associate findById(long id);

	void insertOne(long id, String username, String email_address, String password, long time_stamp, String recommend_word, String img_url, String recommend,long user_id);

	List<AssociateView> findUnsubscribed();

	void updateState(long id);

	void deleteOne(long id);

	List<AssociateView> findSubscribed();

	void insertApplicant(Applicant applicant);

	List<ApplicantMessage> findMyApplyById(long user_id);

	List<ApplicantMessage> findMyAssociateById(long user_id);

	Associate findAssociateByEmail(String email_address);

	List<AssociateMessage> findApplyMessage(long id);

	void updateApplyWithY(long apply_id);

	void updateApplyWithN(long apply_id);

	List<AssociateScoreView> findScore(long user_id);

	long findUserIdByApplyId(long apply_id);

	void insertMember(long id, long user_id, long associate_id);

	List<MemberView> findMemberList(long user_id);

	void updateMemberState(long member_id);

	EmailMessage findAssociateByMemberId(long member_id);

	List<ActivityView> findActivityByUserId(long user_id);

	Set<Long> findAllJoins(long user_id);

	List<ActivityView> findActivityInJoins(long user_id);

	void insertJoins(long id, long activity_id, long user_id);

	void insertActivity(long id, long associate_id, long time_stamp, String activity_name, String activity_content);

	void updateActivityJoinsNumber(long activity_id);
}
