package com.skilldistillery.petlist.entities;

import java.util.Objects;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Pet {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id; 
	
	private String owner;
	
	private String name;
	
	private String species;
	
	private int age;
	
	@Column(name = "favorite_food")
	private String favoriteFood;
	
	@Column(name = "favorite_toy")
	private String favoriteToy;
	
	private String picture;

	public Pet() {
		
	}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getOwner() {
		return owner;
	}

	public void setOwner(String owner) {
		this.owner = owner;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSpecies() {
		return species;
	}

	public void setSpecies(String species) {
		this.species = species;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getFavoriteFood() {
		return favoriteFood;
	}
	
	
	public void setFavoriteFood(String favoriteFood) {
		this.favoriteFood = favoriteFood;
	}
	

	public String getFavoriteToy() {
		return favoriteToy;
	}

	public void setFavoriteToy(String favoriteToy) {
		this.favoriteToy = favoriteToy;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	@Override
	public String toString() {
		return "Pet id=" + id + ", owner=" + owner + ", name=" + name + ", species=" + species + ", age=" + age
				+ ", favoriteFood=" + favoriteFood + ", favoriteToy=" + favoriteToy;
	}

	@Override
	public int hashCode() {
		return Objects.hash(id);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Pet other = (Pet) obj;
		return id == other.id;
	}
	
	
	

}
