package com.ohdogcat.odc.pet.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ohdogcat.odc.pet.model.vo.Pet;

@Repository("pDao")
public class PetDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public ArrayList<Pet> selectMyPetList(int mId) {
		return (ArrayList)sqlSession.selectList("PetMapper.selectMyPetList",mId);
	}

	public int insertPet(Pet p) {
		return sqlSession.insert("PetMapper.insertPet",p);
	}

	public int updatePet(Pet p) {
		return sqlSession.update("PetMapper.updatePet",p);
	}

	public int deletePet(int pid) {
		return sqlSession.update("PetMapper.deletePet",pid);
	}
	
}
