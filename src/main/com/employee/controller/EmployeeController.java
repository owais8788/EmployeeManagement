package com.employee.controller;

import com.employee.dao.EmployeeDao;
import com.employee.models.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class EmployeeController {

    @Autowired(required = true)
    private EmployeeDao employeeDao;

    @RequestMapping("/home")
    public String home() {
        return "/home";
    }

    @RequestMapping("/login")
    public String loginPage() {
        return "/login";
    }
    @RequestMapping("/register")
    public String registerPage() {
        return "/register";
    }

    @RequestMapping(path = "/createEmp", method = RequestMethod.POST)
    public String createEmp(@ModelAttribute Employee employee) {
        int i = employeeDao.saveEmployee(employee);
        System.out.println(i);
        return "/register";
    }
}
