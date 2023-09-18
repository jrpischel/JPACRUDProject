package com.skilldistillery.petlist.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.petlist.entities.Pet;

@Service
@Transactional
public class PetDAOImpl implements PetDAO {
	
	@PersistenceContext
	private EntityManager em;

	@Override
	public Pet findById(int petId) {
		return em.find(Pet.class, petId);
	}

	@Override
	public List<Pet> findAll() {
		List<Pet> pets = null;
		String jpql = "SELECT p FROM Pet p";
		pets = em.createQuery(jpql, Pet.class).getResultList();
		return pets;
	}

	@Override
	public Pet create(Pet newPet) {
		em.persist(newPet);
		return newPet;
	}

	@Override
	public Pet update(int id, Pet updatePet) {
		Pet dbPet = em.find(Pet.class, id);
		
		if(dbPet != null) {
		dbPet.setOwner(updatePet.getOwner());
		dbPet.setName(updatePet.getName());
		dbPet.setSpecies(updatePet.getSpecies());
		dbPet.setAge(updatePet.getAge());
		dbPet.setFavoriteFood(updatePet.getFavoriteFood());
		dbPet.setFavoriteToy(updatePet.getFavoriteToy());
		}
		return dbPet;
	}

	@Override
	public boolean deleteById(int petId) {
		Pet dbPet = em.find(Pet.class, petId);
		boolean deleted = false;
		
		if(dbPet != null) {
			em.remove(dbPet);
			deleted = !em.contains(dbPet);
		}
		
		return deleted;
	}

}
