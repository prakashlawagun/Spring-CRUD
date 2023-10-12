package com.prakash.dao;
import java.util.List;
import com.prakash.entity.Employee;

public interface EmpDao {

	public int saveEmp(Employee emp);
	
	public Employee getEmpById(int id);
	
	public List<Employee> getAllEmp();
	
	public void updateEmp(Employee emp);
	
	public void deleteEmp(int id);
}
