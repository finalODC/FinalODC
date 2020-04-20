package com.ohdogcat.odc.homepage.searchHospital.model.dao;

import java.util.ArrayList;


import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ohdogcat.odc.board.model.vo.PageInfo;
import com.ohdogcat.odc.homepage.member.model.vo.HMember;
import com.ohdogcat.odc.homepage.searchHospital.model.vo.hospitalSearchCondition;

@Repository("shDao")
public class searchHospitalDao {
	@Autowired
	private SqlSessionTemplate sqlSession;

	public int hospitalListCount(hospitalSearchCondition hs) {
		return sqlSession.selectOne("hospitalsearchMapper.hospitalListCount",hs);
	}

	public ArrayList<HMember> hospitalSearchList(PageInfo pi, hospitalSearchCondition hs) {
		int offset = (pi.getCurrentPage() -1 ) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("hospitalsearchMapper.hospitalList",hs,rowBounds);
	}

	public HMember gethoispital(int hId) {
		return sqlSession.selectOne("hospitalsearchMapper.gethospital",hId);
	}

}
