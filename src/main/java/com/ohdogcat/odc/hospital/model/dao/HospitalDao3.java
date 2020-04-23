package com.ohdogcat.odc.hospital.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ohdogcat.odc.board.model.vo.PageInfo;
import com.ohdogcat.odc.homepage.member.model.vo.HMember;
import com.ohdogcat.odc.hospital.model.vo.hoReply;



@Repository("hoDao3")
public class HospitalDao3 {
	@Autowired
	private SqlSessionTemplate sqlSession;
	

	public int getListCount(int hId) {
		
		return sqlSession.selectOne("hospitalRe.getListCount",hId);
	}


	public ArrayList<hoReply> getReply(int hId, PageInfo pi) {
		
		int offset = (pi.getCurrentPage()-1)*pi.getBoardLimit();
		RowBounds rw = new RowBounds(offset,pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("hospitalRe.getReply",hId,rw);
	}


	public Integer delHReply(int rId) {
		// TODO Auto-generated method stub
		return sqlSession.update("hospitalRe.delHReply",rId);
	}


	public Integer insertRe(hoReply ho) {
		// TODO Auto-generated method stub
		return sqlSession.insert("hospitalRe.insertRe",ho);
	}


	public Integer updateRe(hoReply ho) {
		
		return sqlSession.update("hospitalRe.updateRe",ho);
	}

	

	
			
}
