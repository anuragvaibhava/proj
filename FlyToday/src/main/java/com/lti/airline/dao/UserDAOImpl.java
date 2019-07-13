package com.lti.airline.dao;

import java.util.List;

import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lti.airline.model.User;


@Repository
public class UserDAOImpl implements UserDAO {
	
@Autowired
private SessionFactory sessionFactory;



	public void saveUser(User user) {
		Session currentSession =sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(user);
	

	}

	public List<User> getUsers() {
		Session session = sessionFactory.getCurrentSession();
		CriteriaBuilder cb= session.getCriteriaBuilder();
		CriteriaQuery<User> cq=cb.createQuery(User.class);
		Root<User> root=cq.from(User.class);
		cq.select(root);
		Query query=session.createQuery(cq);
		return query.getResultList();
	}

}
