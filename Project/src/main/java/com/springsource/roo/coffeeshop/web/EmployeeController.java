package com.springsource.roo.coffeeshop.web;
import com.springsource.roo.coffeeshop.domain.Employee;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/employees")
@Controller
@RooWebScaffold(path = "employees", formBackingObject = Employee.class, delete = false, update = false)
public class EmployeeController {
}
