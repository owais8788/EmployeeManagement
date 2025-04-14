package com.employee.controller;

import com.employee.dao.EmployeeDao;
import com.employee.models.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
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

    @RequestMapping(path = "/loginUser", method = RequestMethod.POST)
    public String loginUser(@RequestParam String loginId, @RequestParam String password, HttpSession session) {
        Employee employee = employeeDao.loginEmployee(loginId, password);
        if(employee != null){
            session.setAttribute("name", employee.getName());
            return "redirect:/home";
        } else {
            session.setAttribute("msg", "Invalid login credentials");
            return "redirect:/login";
        }
    }

    @RequestMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate(); // Clear user session
        return "redirect:/login";
    }
}
