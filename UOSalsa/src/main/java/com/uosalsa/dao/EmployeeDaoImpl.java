package com.uosalsa.dao;



import java.util.List;





import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;





import com.uosalsa.model.Employee;
import com.uosalsa.repository.EmployeeRepository;


@Component("employeeDao")
public class EmployeeDaoImpl implements EmployeeDao {
	
	
	@Autowired SessionFactory session;
	@Autowired EmployeeRepository employeeRepository;
	
	public void create(Employee employee){
		System.out.println("Saving through repo now");
		/*Employee em = employeeRepository.save(employee);
		System.out.println("Saved emploee = "+ em.toString());*/
		session.getCurrentSession().save(employee);
	}

	@Override
	public List<Employee> findAll() {
		System.out.println("Finding All Employees through repo now");
		return employeeRepository.findAll();
	}
	
	/*public Employee findById(Long id){		
		return session.getCurrentSession().get(Employee.class, id);
	}
	
	public List<Employee> findAllEmployees() {
		return employeeRepository.findAllEmployees();
	}*/
}
