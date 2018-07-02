package com.springsource.roo.coffeeshop.web;
import com.springsource.roo.coffeeshop.domain.Manager;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/managers")
@Controller
@RooWebScaffold(path = "managers", formBackingObject = Manager.class)
public class ManagerController {
}
