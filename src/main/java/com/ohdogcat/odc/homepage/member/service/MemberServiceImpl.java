package com.ohdogcat.odc.homepage.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ohdogcat.odc.homepage.member.model.dao.MemberDao;
import com.ohdogcat.odc.homepage.member.model.vo.Member;

@Service("mService")
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDao mDao;
	
	@Override
	public int insertMember(Member m) {
		
		return mDao.insertMember(m);
	}

}
