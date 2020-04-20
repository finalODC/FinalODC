package com.ohdogcat.odc.manager.Notice.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ohdogcat.odc.board.model.vo.PageInfo;
import com.ohdogcat.odc.manager.Notice.model.vo.Notice;

@Repository("nDao")
public class NoticeDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public int writenotice(Notice n) {
		return sqlSession.insert("NoticeMapper.writenotice",n);
	}

	public int NoticeListCount() {
		return sqlSession.selectOne("NoticeMapper.NoticeListCount");
	}

	public ArrayList<Notice> getNoticeList(PageInfo pi) {
		
		int offset = (pi.getCurrentPage() -1 ) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());

		return (ArrayList)sqlSession.selectList("NoticeMapper.getNoticeList",null,rowBounds);
	}

}
