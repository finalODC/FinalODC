package com.ohdogcat.odc.hospital.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ohdogcat.odc.hospital.model.dao.HospitalDao2;

@Service("hoService2")
public class HospitalServiceImpl2 implements HospitalService2{

	@Autowired
	private HospitalDao2 hoDao2;
	
	
}
