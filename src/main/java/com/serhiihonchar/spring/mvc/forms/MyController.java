package com.serhiihonchar.spring.mvc.forms;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.validation.Valid;

@Controller
@RequestMapping("/employee")
public class MyController {
    @RequestMapping("/")
    public String showFirstView() {
        return "first-view";
    }

    @RequestMapping("/askDetails")
    public String askEmployeeDetails(Model model) {
//        Employee employee = new Employee();
//        employee.setName("Name");
//        employee.setSurname("Surname");
//        employee.setSalary(0);
        model.addAttribute("employee", new Employee());
        return "ask-emp-details-view"; // here will be a form
    }

    //    @RequestMapping("/showDetails")
//    public String showEmployeeDetails(){
//        return "show-emp-details-view";
//    }
//    @RequestMapping("/showDetails")
//    public String showEmployeeDetails(HttpServletRequest request,
//                                      Model model) {
//
//        String empName = request.getParameter("employeeName");
//        empName = "Mr. " + empName;
//        model.addAttribute("nameAttribute", empName);
//        model.addAttribute("description", " - student");
//        return "show-emp-details-view";
//    }
// The same result with @RequestParam. We don't use HttpServletRequest in parameter
    @RequestMapping("/showDetails")
    public String showEmployeeDetails(
            @Valid @ModelAttribute("employee") Employee emp,
                                      BindingResult bindingResult) {
//        String name = emp.getName();
//        emp.setName("Mr. " + name);
//        String surname = emp.getSurname();
//        emp.setSurname(surname + " !");
//        int salary = emp.getSalary();
//        emp.setSalary(salary);
//        System.out.println("surname length= "+emp.getSurname().length());
        if (bindingResult.hasErrors()) {
            return "ask-emp-details-view";
        }else {
            return "show-emp-details-view";
        }
    }
}
