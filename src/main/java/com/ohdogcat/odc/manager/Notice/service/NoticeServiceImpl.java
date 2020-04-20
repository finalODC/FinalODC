package com.ohdogcat.odc.manager.Notice.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ohdogcat.odc.board.model.vo.PageInfo;
import com.ohdogcat.odc.manager.Notice.model.dao.NoticeDao;
import com.ohdogcat.odc.manager.Notice.model.vo.Notice;

@Service("nService")
public class NoticeServiceImpl implements NoticeService {
	
	@Autowired
	private NoticeDao nDao;
	
	@Override
	public int writenotice(Notice n) {
		return nDao.writenotice(n);
	}

	@Override
	public int NoticeListCount() {
		return nDao.NoticeListCount();
	}

	@Override
	public ArrayList<Notice> getNoticeList(PageInfo pi) {
		return nDao.getNoticeList(pi);
	}

}
