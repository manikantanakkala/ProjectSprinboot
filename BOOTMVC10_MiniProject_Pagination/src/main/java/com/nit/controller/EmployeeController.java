package com.nit.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.nit.Entity.Employee;
import com.nit.service.IEmployeeService;

@Controller
public class EmployeeController 
{
	@Autowired
	private IEmployeeService service;
	
	@GetMapping("/")
	public String showHomepage()
	{
		return "welcome";
	}
	
	@GetMapping("/report")
	public String ShowEmployees(Map<String,Object> map)
	{
		List<Employee> al=service.getEmployeesData();
		
		al.forEach(System.out::println);
		map.put("empdata", al);
		
		System.out.println("EmployeeController.ShowEmployees()");
		
		return "show_Employees";
	}
	
	@GetMapping("register")
	public String launchRegisterpage(@ModelAttribute("emp") Employee emp)
	{
		
		return "show_registerform";
	}
	
	/*
	 * @PostMapping("register") public String registerpage(Map<String,Object>
	 * map,@ModelAttribute("emp") Employee emp) { String msg=
	 * service.registerEmployee(emp);
	 * 
	 * 
	 * 
	 * map.put("resultmsg", msg);
	 * 
	 * List<Employee> employeesData = service.getEmployeesData();
	 * 
	 * map.put("empdata", employeesData);
	 * 
	 * return "show_registersuccess"; }
	 */
	
	
	@PostMapping("/register")
	public String registerpage(RedirectAttributes rdt,@ModelAttribute("emp") Employee emp)
	{
		String msg= service.registerEmployee(emp);
		
		
		
		rdt.addFlashAttribute("resultmsg", msg);
		
		List<Employee> employeesData = service.getEmployeesData();
		
		rdt.addFlashAttribute("empdata", employeesData);
		
		return "redirect:report";
	}
	
	
	@GetMapping("/edit")
	public String  editEmployee(@RequestParam("eid") int eid, @ModelAttribute("emp") Employee emp)
	{
		Employee editEmployee = service.editEmployee(eid);
		
		return "editemployee";
	}
	
	@GetMapping("/getpages")
	public String getPages(@PageableDefault(page=0,size=5,sort = "job",direction=Sort.Direction.ASC) Pageable pageable, Map<String,Object> map)        
	{
		
		Page employeesPages = service.getEmployeesPages(pageable);
		
		map.put("data", employeesPages);
		
		return "show_pages";
	}
	
	
	

}
