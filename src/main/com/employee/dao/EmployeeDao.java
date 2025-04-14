package com.employee.dao;

import com.employee.models.Employee;

import java.util.List;

public interface EmployeeDao {

    int saveEmployee(Employee employee);

    List<Employee> getEmployees();

    Employee loginEmployee(String loginId, String password);
}
