package com.spring.dao;

import java.util.List;

import com.spring.model.Player;

public interface PlayerDAO {
	
	public List<Player> getPlayers();
	
	public void addPlayer(Player player);
	
	public Player getPlayer(int id);
	
	public void removePlayer(int id);
	

}
