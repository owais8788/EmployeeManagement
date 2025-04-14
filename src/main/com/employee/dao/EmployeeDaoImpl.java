package com.employee.dao;

import com.employee.models.Employee;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
public class EmployeeDaoImpl implements EmployeeDao{

    @Autowired
    private HibernateTemplate hibernateTemplate;

    @Transactional
    @Override
    public int saveEmployee(Employee employee) {
        int i = (int)hibernateTemplate.save(employee);
        return i;
    }

    @Override
    public List<Employee> getEmployees() {
        List<Employee> employees = hibernateTemplate.loadAll(Employee.class);
        return employees;
    }

    @Override
    public Employee loginEmployee(String loginId, String password) {
        String hql = "from Employee where loginId= :lg and password = :pwd";
        Employee employee = (Employee) hibernateTemplate.execute(s->{
            Query query = s.createQuery(hql);
            query.setString("lg", loginId);
            query.setString("pwd", password);
            return query.uniqueResult();
        });
        
        return employee;
    }
}
