/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spboot.petshop.controllers;

import com.spboot.petshop.interfaces.DivisiInterface;
import com.spboot.petshop.interfaces.EmployeeInterface;
import com.spboot.petshop.interfaces.GenderInterface;
import com.spboot.petshop.models.Admin;
import com.spboot.petshop.models.Divisi;
import com.spboot.petshop.models.Employee;
import com.spboot.petshop.models.Gender;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 *
 * @author BesariMaliik, Sofia
 */
@Controller
public class EmployeeController {

    @Autowired
    private EmployeeInterface employeeInterface;
    
    @Autowired
    private DivisiInterface divisiInterface;
    
    @Autowired
    private GenderInterface genderInterface;
    
    @GetMapping("/employee")
    public String empindex(Model model,  HttpServletRequest request) {
        HttpSession session = request.getSession(true);
        
        long admin_id = (long) session.getAttribute("id"); 
        List<Employee> employees = employeeInterface.findByAdminId(admin_id);  
        model.addAttribute("employees", employees);
        
        return "employee/empindex";
    }

    @GetMapping("/employee/empcreate")
    public String empcreate(Model model) {
        
        List<Gender> gender = genderInterface.getAll();
        model.addAttribute("gender", gender);
        
        List<Divisi> divisi = divisiInterface.getAll();
        model.addAttribute("divisi", divisi);

        Employee employee = new Employee();
        model.addAttribute("employee", employee);

        return "employee/empcreate";
    }

    @PostMapping("/employee/empstore")
    public String empstore(@ModelAttribute("employee") Employee employee, RedirectAttributes ra, HttpServletRequest request) throws Exception{
        HttpSession session = request.getSession(true);
        
        Admin admin = new Admin();
        admin.setId((long) session.getAttribute("id"));
        
        employee.setAdmin(admin);
        
        if (employee.getName().equals("")) {
            ra.addFlashAttribute("danger", "Name cannot be null!");
            return "redirect:/employee/empcreate";
        }
        
        if (employee.getTelephone().equals("")) {
            ra.addFlashAttribute("danger", "Telephone cannot be null!");
            return "redirect:/employee/empcreate";
        }
        
        if (employee.getAddress().equals("")) {
            ra.addFlashAttribute("danger", "Address cannot be null!");
            return "redirect:/employee/empcreate";
        }

        employeeInterface.empstore(employee);
        return "redirect:/employee";
    }
    
    @GetMapping("/employee/{id}/empedit")
    public String empedit(@PathVariable(value = "id") long id, Model model) {
        List<Gender> gender = genderInterface.getAll();
        model.addAttribute("gender", gender);
        
        List<Divisi> divisi = divisiInterface.getAll();
        model.addAttribute("divisi", divisi);
        
        Employee employee = employeeInterface.getById(id);

        model.addAttribute("employee", employee);
        return "employee/empedit";
    }
    
    @PostMapping("/employee/{id}/delete")
    public String delete(@PathVariable(value = "id") long id) {
        employeeInterface.delete(id);
        return "redirect:/employee";
    }
}
