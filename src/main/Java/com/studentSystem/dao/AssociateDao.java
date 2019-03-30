package com.studentSystem.dao;

import com.studentSystem.model.*;

import java.util.List;

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
}
