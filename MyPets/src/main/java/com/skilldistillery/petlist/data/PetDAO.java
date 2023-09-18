package com.skilldistillery.petlist.data;

import java.util.List;

import com.skilldistillery.petlist.entities.Pet;

public interface PetDAO {
	
	Pet findById(int petId);
	List<Pet> findAll();
	Pet create(Pet newPet);
	Pet update(int id, Pet updatePet);
	boolean deleteById(int petId);
}
