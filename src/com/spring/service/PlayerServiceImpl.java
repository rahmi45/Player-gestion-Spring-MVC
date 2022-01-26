package com.spring.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.dao.PlayerDAO;
import com.spring.model.Player;

@Service
public class PlayerServiceImpl implements PlayerService{

	private PlayerDAO playerDao;
	
	@Autowired
	public PlayerServiceImpl(PlayerDAO playerDao) {
		this.playerDao = playerDao;
	}


	@Override
	@Transactional
	public List<Player> allPlayer() {
		return playerDao.getPlayers();
	}


	@Override
	public void savePlayer(Player player) {
		playerDao.addPlayer(player);
		
	}

}
