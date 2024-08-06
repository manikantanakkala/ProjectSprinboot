package com.nit.Entity;

import io.micrometer.common.lang.NonNull;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.RequiredArgsConstructor;


@Data

@AllArgsConstructor

@RequiredArgsConstructor
@Entity
@Table(name="emp")
public class Employee 
{
	
	@Id
	@Column(name = "empno")
	@SequenceGenerator(name="gen1", initialValue=1,allocationSize = 1)
	@GeneratedValue(generator = "gen1",strategy=GenerationType.SEQUENCE)
	private Integer eid;
	
	@NonNull
	@Column(length = 99)
	private String ename;
	
	@NonNull
	@Column(length = 99)
	private String job;
	
	@NonNull
	private Long sal;
	

}
