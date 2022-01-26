package com.spring.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.model.Player;

@Repository
public class PlayerDAOImpl implements PlayerDAO {
	
	
	private SessionFactory sessionFactory;
	
	@Autowired
	public PlayerDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}



	@Override
	public List<Player> getPlayers() {
		Session session = sessionFactory.getCurrentSession();
		
		Query<Player> query = session.createQuery("from Player", Player.class);
		
		return query.getResultList();
	}



	@Override
	public void addPlayer(Player player) {
		Session session = sessionFactory.getCurrentSession();
		
		session.saveOrUpdate(player);
		
	}

}
