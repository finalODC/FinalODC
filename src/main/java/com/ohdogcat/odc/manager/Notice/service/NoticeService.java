package com.ohdogcat.odc.manager.Notice.service;

import java.util.ArrayList;

import com.ohdogcat.odc.board.model.vo.PageInfo;
import com.ohdogcat.odc.manager.Notice.model.vo.Notice;

public interface NoticeService {

	/**
	 * 공지 작성
	 * @param n
	 * @return
	 */
	int writenotice(Notice n);

	/**
	 * 전체 게시글 숫자 가져오기
	 * @return
	 */
	int NoticeListCount();

	/**
	 * 게시글 리스트 가져오기
	 * @param pi
	 * @return
	 */
	ArrayList<Notice> getNoticeList(PageInfo pi);

	/**
	 * 공지글 가져오기
	 * @param nId
	 * @return
	 */
	Notice NoticeDetail(int nId);

	/**
	 * 공지글 삭제하기
	 * @param nId
	 * @return
	 */
	int deleteNotice(int nId);

	/**
	 * 공지글 수정하기
	 * @param n
	 * @return
	 */
	int NoticeUpdate(Notice n);


}
