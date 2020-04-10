package com.ohdogcat.odc.homepage.member.service;

import com.ohdogcat.odc.homepage.member.model.vo.HMember;

public interface HMemberService {

	int hIdCheck(String userId);

	int hInsert(HMember m);

}
