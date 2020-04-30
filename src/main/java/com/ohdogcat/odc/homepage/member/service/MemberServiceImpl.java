package com.ohdogcat.odc.homepage.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ohdogcat.odc.homepage.member.model.dao.MemberDao;
import com.ohdogcat.odc.homepage.member.model.vo.Member;
import com.ohdogcat.odc.manager.Membermanage.model.vo.memberBlack;

@Service("mService")
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDao mDao;
	
	@Override
	public int insertMember(Member m) {
		
		return mDao.insertMember(m);
	}

	@Override
	public Member loginMember(Member m) {
		
		return mDao.loginMember(m);
	}

	@Override
	public int idCheck(String id) {
		return mDao.idCheck(id);
	}

	@Override
	public memberBlack memberCheck(Member m) {
		return mDao.memberCheck(m);
	}

}
