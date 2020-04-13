package com.ohdogcat.odc.homepage.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ohdogcat.odc.homepage.member.model.dao.HMemberDao;
import com.ohdogcat.odc.homepage.member.model.vo.HMember;

@Service("hmService")
public class HMemberServiceImpl implements HMemberService {
	
	

	@Override
	public HMember loginMem(String userId) {
		
		return hmDao.loginMem(userId);
	}

	@Override
	public int checkBusiness(String hCode) {
				return hmDao.checkBusiness(hCode);
	}

	
	@Autowired
	private HMemberDao hmDao;

	@Override
	public int hIdCheck(String userId) {
		
		return hmDao.hIdCheck(userId);
	}
	
	

	@Override
	public int hInsert(HMember m) {
		
		return hmDao.hInsert(m);
	}
	
	@Override
	public int checkHEmail(String email) {
		
		return hmDao.checkHEmail(email);
	}








	
}
