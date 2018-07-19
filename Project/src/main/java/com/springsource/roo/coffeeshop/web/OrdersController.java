package com.springsource.roo.coffeeshop.web;
import com.springsource.roo.coffeeshop.domain.Orders;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/orderses")
@Controller
@RooWebScaffold(path = "orderses", formBackingObject = Orders.class, delete = false, update = false)
public class OrdersController {
}
