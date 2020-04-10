package com.ohdogcat.odc.manager.Membermanage.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ohdogcat.odc.manager.Membermanage.model.dao.manageMemberDao;
import com.ohdogcat.odc.manager.Membermanage.model.vo.manageMember;

@Service("managemService")
public class manageMemberServiceImpl implements manageMemberService {

	@Autowired
	private manageMemberDao managemDao;
	
	@Override
	public ArrayList<manageMember> manageMemberList() {

		return managemDao.manageMemberList();
	}

	@Override
	public int MemberListCount() {

		return managemDao.MemberListCount();
	}

}