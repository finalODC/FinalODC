package com.ohdogcat.odc.pet.model.service;

import java.util.ArrayList;

import com.ohdogcat.odc.pet.model.vo.Pet;

public interface PetService {
	
	ArrayList<Pet> selectMyPetList(int mid);

	int insertPet(Pet p);

	int updatePet(Pet p);

	int deletePet(int pid);
	
}
