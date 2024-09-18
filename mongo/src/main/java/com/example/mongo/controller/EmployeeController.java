package com.example.mongo.controller;

import com.example.mongo.model.Employee;
import com.example.mongo.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/employees")
public class EmployeeController {

    @Autowired
    private EmployeeService employeeService;

    @GetMapping("/list")
    public String listEmployees(Model model) {
        List<Employee> employees = employeeService.getAllEmployees();
        model.addAttribute("employees", employees);
        return "listEmployees";
    }

    @GetMapping("/add")
    public String showAddForm(Model model) {
        model.addAttribute("employee", new Employee());
        return "addEmployee";
    }

    @PostMapping("/add")
    public String addEmployee(@ModelAttribute Employee employee) {
        employeeService.addEmployee(employee);
        return "redirect:/employees/list";
    }

    @GetMapping("/edit/{id}")
    public String showEditForm(@PathVariable String id, Model model) {
        Employee employee = employeeService.getEmployeeById(id).orElse(null);
        if (employee != null) {
            model.addAttribute("employee", employee);
            return "editEmployee";
        } else {
            return "redirect:/employees/list";
        }
    }

    @PostMapping("/update")
    public String updateEmployee(@ModelAttribute Employee employee) {
        employeeService.updateEmployee(employee);
        return "redirect:/employees/list";
    }

    @GetMapping("/delete/{id}")
    public String deleteEmployee(@PathVariable String id) {
        employeeService.deleteEmployee(id);
        return "redirect:/employees/list";
    }
}
