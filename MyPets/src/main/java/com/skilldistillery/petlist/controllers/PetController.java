package com.skilldistillery.petlist.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.petlist.data.PetDAO;
import com.skilldistillery.petlist.entities.Pet;

@Controller
public class PetController {
	
	@Autowired
	private PetDAO dao;
	
	@RequestMapping(path = "goHome.do", method = RequestMethod.GET)
	public ModelAndView goHome(int petId) {
		ModelAndView mv = new ModelAndView();
		Pet pet = dao.findById(petId);
		mv.addObject("pet", pet);
		mv.setViewName("home");
		return mv;
	}
	
	@RequestMapping(path = {"/", "index"}, method = RequestMethod.GET)
	public String index(Model model) {
		List<Pet> pets = dao.findAll();
		model.addAttribute("pets", pets);
		return "index";
	}
	
	@RequestMapping(path = "create.do", method = RequestMethod.GET)
	public ModelAndView addPet(Pet newPet) {
		ModelAndView mv = new ModelAndView();
		dao.create(newPet);
		mv.setViewName("home");
		return mv;
	}
	
	@RequestMapping(path = "updateForm.do", method = RequestMethod.GET, params = "petId")
	public ModelAndView update(@RequestParam int petId) {
		ModelAndView mv = new ModelAndView();
		Pet petToBeUpdated = dao.findById(petId);
		mv.addObject("pet", petToBeUpdated);
		mv.setViewName("update");
		return mv;
	}
	
	@RequestMapping(path = "update.do", method = RequestMethod.GET)
	public ModelAndView update(Pet pet) {
		ModelAndView mv = new ModelAndView();
		dao.update(pet.getId(), pet);
		mv.addObject("pet", dao.findById(pet.getId()));
		mv.setViewName("home");
		return mv;
	}
	
	@RequestMapping(path = "delete.do", method = RequestMethod.GET)
	public ModelAndView deleteById(int petId) {
		ModelAndView mv = new ModelAndView();
		dao.deleteById(petId);
		mv.setViewName("deleted");
		return mv;
	}
	

}
