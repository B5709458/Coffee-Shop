package com.springsource.roo.coffeeshop.web;
import com.springsource.roo.coffeeshop.domain.Receipt;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/receipts")
@Controller
@RooWebScaffold(path = "receipts", formBackingObject = Receipt.class, delete = false, update = false)
public class ReceiptController {
}
