package com.ohdogcat.odc.pet.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ohdogcat.odc.pet.model.dao.PetDao;
import com.ohdogcat.odc.pet.model.vo.Pet;
@Service("pService")
public class PetServiceImpl implements PetService {
	@Autowired
	private PetDao pDao;
	
	@Override
	public ArrayList<Pet> selectMyPetList(int mid) {
		return pDao.selectMyPetList(mid);
	}

}
