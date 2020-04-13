package com.ohdogcat.odc.homepage.member.service;

import com.ohdogcat.odc.homepage.member.model.vo.HMember;

public interface HMemberService {
	
	HMember loginMem(String userId);
	
	int checkBusiness(String hCode);

	int hIdCheck(String userId);

	int hInsert(HMember m);

	int checkHEmail(String email);





}
