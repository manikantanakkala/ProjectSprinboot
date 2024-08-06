package com.nit.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.nit.Entity.Employee;
import com.nit.repository.IEmployeeRepository;
import com.nit.repository.IPaginngRepository;

@Service
public class IEmployeeServiceImplCls implements IEmployeeService 
{
	@Autowired
	private IEmployeeRepository emprepo;
	
	@Autowired
	private IPaginngRepository pagerepo;

	@Override
	public List<Employee> getEmployeesData() 
	{
		
		System.out.println("IEmployeeServiceImplCls.getEmployeesData()");
		return emprepo.findAll();
	}

	@Override
	public String registerEmployee(Employee emp) {
		
		Integer eid = emprepo.save(emp).getEid();
		return "Employee Added with Eid "+eid;
	}

	@Override
	public Employee editEmployee(int eid) {
		Employee e=emprepo.findById(eid).orElseThrow(()-> new IllegalArgumentException());
		return e;
	}

	@Override
	public Page getEmployeesPages(Pageable pageable) {
		
		return pagerepo.findAll(pageable);
	}
	
	

	

}
