package com.springsource.roo.coffeeshop.web;
import com.springsource.roo.coffeeshop.domain.Customer;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/customers")
@Controller
@RooWebScaffold(path = "customers", formBackingObject = Customer.class, delete = false, update = false)
public class CustomerController {
}
