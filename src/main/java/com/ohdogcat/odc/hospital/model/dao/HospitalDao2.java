package com.ohdogcat.odc.hospital.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("hoDao2")
public class HospitalDao2 {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
			
}
