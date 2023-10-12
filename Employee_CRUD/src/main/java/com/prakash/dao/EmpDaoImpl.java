package com.prakash.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.prakash.entity.Employee;

@Repository
public class EmpDaoImpl implements EmpDao {
	
	@Autowired
	private HibernateTemplate hibernateTemplate;

	@Override
	@Transactional
	public int saveEmp(Employee emp) {
		// TODO Auto-generated method stub
		int i = (Integer) hibernateTemplate.save(emp);
		return i;
	}

	@Override
	public Employee getEmpById(int id) {
		// TODO Auto-generated method stub
		Employee emp = hibernateTemplate.get(Employee.class,id);
		return emp;
	}

	@Override
	public List<Employee> getAllEmp() {
		// TODO Auto-generated method stub
		List<Employee> list = hibernateTemplate.loadAll(Employee.class);
 		return list;
	}

	@Override
	@Transactional
	public void updateEmp(Employee emp) {
		// TODO Auto-generated method stub
		hibernateTemplate.update(emp);
		
	}

	@Override
	@Transactional
	public void deleteEmp(int id) {
		// TODO Auto-generated method stub
		Employee emp = hibernateTemplate.get(Employee.class,id);
		hibernateTemplate.delete(emp);
		
	}

}
