package com.nit.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.nit.Entity.Employee;

public interface IEmployeeRepository extends JpaRepository<Employee, Integer> 
{

}
