package com.springsource.roo.coffeeshop.web;
import com.springsource.roo.coffeeshop.domain.Menu;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/menus")
@Controller
@RooWebScaffold(path = "menus", formBackingObject = Menu.class, delete = false, update = false)
public class MenuController {
}
