package com.ohdogcat.odc.homepage.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ohdogcat.odc.homepage.member.model.dao.HMemberDao;

@Service("hmService")
public class HMemberServiceImpl implements HMemberService {
	
	@Autowired
	private HMemberDao hmDao;

	@Override
	public int hIdCheck(String userId) {
		
		return hmDao.hIdCheck(userId);
	}

	
}
