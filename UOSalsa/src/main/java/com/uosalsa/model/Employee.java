package com.uosalsa.model;


import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;


@Entity
@Table(name="EMPLOYEE")
@SequenceGenerator(name="myentity_seq", sequenceName="my_sequence")
public class Employee {
	
	private Long id;
	private String name;
	private String ssn;
	private Long salary;
	private Date joiningDate;
	
	public Employee(){
		
	}
	
	public Employee(Long id, String name, String ssn, Long salary,
			Date joiningDate) {
		super();
		this.id = id;
		this.name = name;
		this.ssn = ssn;
		this.salary = salary;
		this.joiningDate = joiningDate;
	}

	public Employee(String name, String ssn, Long salary, Date joiningDate) {
		super();
		this.name = name;
		this.ssn = ssn;
		this.salary = salary;
		this.joiningDate = joiningDate;
	}
	
	@Id 
	@GeneratedValue(strategy= GenerationType.AUTO)
	@Column(name = "ID", unique = true, nullable = false, precision = 32, scale = 0)
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	
	@Column(name = "NAME"/*, unique = true, nullable = false, length = 80*/)
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	@Column(name = "SSN"/*, unique = true, nullable = false, length = 80*/)
	public String getSsn() {
		return ssn;
	}

	public void setSsn(String ssn) {
		this.ssn = ssn;
	}
	
	@Column(name = "SALARY"/*, nullable = false, precision = 32, scale = 0*/)
	public Long getSalary() {
		return salary;
	}

	public void setSalary(Long salary) {
		this.salary = salary;
	}
	
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "JOINING_DATE"/*, nullable=false*/)
	public Date getJoiningDate() {
		return joiningDate;
	}

	public void setJoiningDate(Date joiningDate) {
		this.joiningDate = joiningDate;
	}

	@Override
	public String toString() {
		return "Employee [id=" + id + ", name=" + name + ", ssn=" + ssn
				+ ", salary=" + salary + ", joiningDate=" + joiningDate + "]";
	}
}







/*@Entity
@Table(name="EMPLOYEE")
public class Employee {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Size(min=3, max=50)
	@Column(name = "NAME", nullable = false)
	private String name;

	@NotNull
	@DateTimeFormat(pattern="dd/MM/yyyy") 
	@Column(name = "JOINING_DATE", nullable = true)
	@Type(type="org.jadira.usertype.dateandtime.joda.PersistentLocalDate")
	private LocalDate joiningDate;

	@NotNull
	@Digits(integer=8, fraction=2)
	@Column(name = "SALARY", nullable = false)
	private Double salary;
	
	@NotEmpty
	@Column(name = "SSN", unique=true, nullable = false)
	private String ssn;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public LocalDate getJoiningDate() {
		return joiningDate;
	}

	public void setJoiningDate(LocalDate joiningDate) {
		this.joiningDate = joiningDate;
	}

	public Double getSalary() {
		return salary;
	}

	public void setSalary(Double salary) {
		this.salary = salary;
	}

	public String getSsn() {
		return ssn;
	}

	public void setSsn(String ssn) {
		this.ssn = ssn;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + id;
		result = prime * result + ((ssn == null) ? 0 : ssn.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (!(obj instanceof Employee))
			return false;
		Employee other = (Employee) obj;
		if (id != other.id)
			return false;
		if (ssn == null) {
			if (other.ssn != null)
				return false;
		} else if (!ssn.equals(other.ssn))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Employee [id=" + id + ", name=" + name + ", joiningDate="
				+ joiningDate + ", salary=" + salary + ", ssn=" + ssn + "]";
	}
	
	
	

}
*/