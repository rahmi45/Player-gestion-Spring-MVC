package com.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.model.Player;
import com.spring.service.PlayerService;

//http://localhost:8088/Player/
@Controller
@RequestMapping("/fifa")
//http://localhost:8088/Player/fifa/
public class PlayerController {
	
	private PlayerService playerService;
	
	@Autowired
	public PlayerController(PlayerService playerService) {
		this.playerService = playerService;
	}
	
	@GetMapping("/players")
	public String players(Model model){
		List<Player> players = playerService.allPlayer();
		model.addAttribute("players", players);
		return "fifa-players";
	}
	//http://localhost:8088/Player/fifa/add
	@GetMapping("/add")
	public String savePage(Model model) {
		model.addAttribute("player", new Player());
		return "addPlayer";
	}
	
	//http://localhost:8088/Player/fifa/savePlayer
	@PostMapping("/savePlayer")
	public String addPlayer(@ModelAttribute("player") Player Player) {
		playerService.savePlayer(Player);
		return "redirect:/fifa/players";
		
	}
}
