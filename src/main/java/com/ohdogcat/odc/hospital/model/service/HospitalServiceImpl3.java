package com.ohdogcat.odc.hospital.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ohdogcat.odc.board.model.vo.PageInfo;
import com.ohdogcat.odc.homepage.member.model.vo.HMember;
import com.ohdogcat.odc.hospital.model.dao.HospitalDao2;
import com.ohdogcat.odc.hospital.model.dao.HospitalDao3;
import com.ohdogcat.odc.hospital.model.vo.hoReply;

@Service("hoService3")
public class HospitalServiceImpl3 implements HospitalService3{
	
	@Autowired
	private HospitalDao3 hoDao3;

	@Override
	public int getListCount(int hId) {
		// TODO Auto-generated method stub
		return hoDao3.getListCount(hId);
	}

	@Override
	public ArrayList<hoReply> getList(int hId, PageInfo pi) {
	
		return hoDao3.getReply(hId,pi);
	}

	@Override
	public Integer delHReply(int rId) {
		// TODO Auto-generated method stub
		return hoDao3.delHReply(rId);
	}

	@Override
	public Integer insertRe(hoReply ho) {
		
		return hoDao3.insertRe(ho);
	}

	@Override
	public Integer updateRe(hoReply ho) {
		return hoDao3.updateRe(ho);
	}

	
	
	
}
