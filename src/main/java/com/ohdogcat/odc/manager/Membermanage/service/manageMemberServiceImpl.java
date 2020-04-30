package com.ohdogcat.odc.manager.Membermanage.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ohdogcat.odc.board.model.vo.PageInfo;
import com.ohdogcat.odc.manager.Membermanage.model.dao.manageMemberDao;
import com.ohdogcat.odc.manager.Membermanage.model.vo.manageMember;
import com.ohdogcat.odc.manager.Membermanage.model.vo.memberBlack;

@Service("managemService")
public class manageMemberServiceImpl implements manageMemberService {

	@Autowired
	private manageMemberDao managemDao;
	
	@Override
	public ArrayList<manageMember> manageMemberList(PageInfo pi) {

		return managemDao.manageMemberList(pi);
	}

	@Override
	public int MemberListCount() {

		return managemDao.MemberListCount();
	}

	@Override
	public int sMemberListCount(String searchkey) {
		return managemDao.sMemberListCount(searchkey);
	}

	@Override
	public ArrayList<manageMember> managesMemberList(PageInfo pi, String searchkey) {
		return managemDao.managesMemberList(pi,searchkey);
	}

	@Override
	public int delManageMember(int mid) {
		return managemDao.delManageMember(mid);
	}

	@Override
	public int blackmember(memberBlack mb) {
		return managemDao.blackmember(mb);
	}

}
