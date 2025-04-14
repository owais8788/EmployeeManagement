package com.employee.controller;

import com.employee.dao.EmployeeDao;
import com.employee.models.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
public class EmployeeController {

    @Autowired(required = true)
    private EmployeeDao employeeDao;

    @RequestMapping("/home")
    public String home(Model model) {
        List<Employee> employeeList = employeeDao.getEmployees();
        model.addAttribute("employees", employeeList);
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
    public String createEmp(@ModelAttribute Employee employee, Model model) {
        int i = employeeDao.saveEmployee(employee);
        model.addAttribute("msg", "Employee Registered Successfully");
        return "/register";
    }
}
