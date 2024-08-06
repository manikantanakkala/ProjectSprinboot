package com.nit.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.nit.Entity.Employee;

public interface IEmployeeService 
{
	public List<Employee> getEmployeesData();
	
	public String registerEmployee( Employee emp);
	
	public Employee editEmployee(int eid);
	
	public Page getEmployeesPages(Pageable pageable);
	

}
