package com.nit.repository;

import org.springframework.data.repository.PagingAndSortingRepository;

import com.nit.Entity.Employee;

public interface IPaginngRepository extends PagingAndSortingRepository<Employee, Integer> {

}
