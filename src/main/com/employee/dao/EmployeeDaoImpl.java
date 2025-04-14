package com.employee.dao;

import com.employee.models.Employee;
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
}
