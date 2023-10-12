package com.prakash.dao;

import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.prakash.entity.User;

@Repository
@Transactional
public class UserDaoImpl implements UserDao {
	@Autowired
	private HibernateTemplate hibernateTemplate;

	@Override
	public int saveUser(User user) {
		// TODO Auto-generated method stub
		int i = (Integer)hibernateTemplate.save(user);
		
		return i;
	}

	@Override
	public User loginUser(String email, String password) {
		// TODO Auto-generated method stub
		String sql = "from User where email=:em and password=:pw";
		User user =(User)hibernateTemplate.execute(s->{
			Query q = s.createQuery(sql);
			q.setParameter("em", email);
			q.setParameter("pw",password);
			return q.uniqueResult();
		});
		
		
		return user;
	}

}
