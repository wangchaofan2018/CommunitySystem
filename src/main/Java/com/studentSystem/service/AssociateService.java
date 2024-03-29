package com.studentSystem.service;

import com.studentSystem.model.*;

import java.util.List;
import java.util.Set;

public interface AssociateService {
	Associate findAssociateById(long id);

	void insertOne(long id, String username, String email_address, String password, long time_stamp, String recommend_word, String img_url, String recommend,long user_id);

	List<AssociateView> findUnsubscribedAssociate();

	void updateState(long id,String email,String username,String associate_name);

	void deleteOne(long id,String email,String username,String associate_name);

	List<AssociateView> findSubscribedAssociate();

	void insertApplyMessage(Applicant applicant);

	List<ApplicantMessage> findMyApplyById(long user_id);

	List<ApplicantMessage> findMyAssociateById(long user_id);

	Associate findAssociateByEmail(String email_address);

	List<AssociateMessage> findApplyMessage(long id);

	void updateApplyWithY(long apply_id);

	void updateApplyWithN(long apply_id);

	List<AssociateScoreView> findScoreById(long user_id);

	long findUserIdByApplyId(long apply_id);

	void insertMember(long user_id, long associate_id);

	List<MemberView> findMemberList(long user_id);

	void updateMemberState(long member_id);

	EmailMessage findAssociateByMemberId(long member_id);

	List<ActivityView> findActivityByUserId(long user_id);

	Set<Long> findAllSetInJoins(long user_id);

	List<ActivityView> findActivityInJoins(long user_id);

	void insertJoins(long id, long activity_id, long user_id);

	void insertActivity(long id, long associate_id, long time_stamp, String activity_name, String activity_content);

	void updateActivityJoinsNumber(long activity_id);

	AssociateViewPage findAssociateViewByPage(int p);

	void updateAssociateCount(String name);

	int findStatusByUser(long user_id);

	void updateUserStatus(long user_id);

	List<MemberMessage> findAllMemberByAssociateId(long associate_id);

	void deleteMember(long member_id);

	List<MemberMessage> findNotBeDeleteMember(long associate_id);

	void graduateMember(List<Long> str1);

	void updateUserActivity(long user_id,long associate_id);
}
