package com.ohdogcat.odc.homepage.searchHospital.service;

import java.util.ArrayList;

import com.ohdogcat.odc.board.model.vo.PageInfo;
import com.ohdogcat.odc.homepage.member.model.vo.HMember;
import com.ohdogcat.odc.homepage.searchHospital.model.vo.hospitalSearchCondition;

public interface searchHospitalService {

	/**
	 * 검색할 병원 숫자 찾기
	 * @param searchkey
	 * @param searchval
	 * @return
	 */
	int hospitalListCount(hospitalSearchCondition hs);

	/**
	 * 검색한 병원 리스트 가져오기
	 * @param pi
	 * @return
	 */
	ArrayList<HMember> hospitalSearchList(PageInfo pi,hospitalSearchCondition hs);

}
