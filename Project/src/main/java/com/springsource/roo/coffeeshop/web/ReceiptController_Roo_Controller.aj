// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.springsource.roo.coffeeshop.web;

import com.springsource.roo.coffeeshop.domain.Customer;
import com.springsource.roo.coffeeshop.domain.Employee;
import com.springsource.roo.coffeeshop.domain.Orders;
import com.springsource.roo.coffeeshop.domain.Receipt;
import com.springsource.roo.coffeeshop.web.ReceiptController;
import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect ReceiptController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String ReceiptController.create(@Valid Receipt receipt, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, receipt);
            return "receipts/create";
        }
        uiModel.asMap().clear();
        receipt.persist();
        return "redirect:/receipts/" + encodeUrlPathSegment(receipt.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String ReceiptController.createForm(Model uiModel) {
        populateEditForm(uiModel, new Receipt());
        return "receipts/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String ReceiptController.show(@PathVariable("id") Long id, Model uiModel) {
        uiModel.addAttribute("receipt", Receipt.findReceipt(id));
        uiModel.addAttribute("itemId", id);
        return "receipts/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String ReceiptController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("receipts", Receipt.findReceiptEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) Receipt.countReceipts() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("receipts", Receipt.findAllReceipts(sortFieldName, sortOrder));
        }
        return "receipts/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String ReceiptController.update(@Valid Receipt receipt, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, receipt);
            return "receipts/update";
        }
        uiModel.asMap().clear();
        receipt.merge();
        return "redirect:/receipts/" + encodeUrlPathSegment(receipt.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String ReceiptController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        populateEditForm(uiModel, Receipt.findReceipt(id));
        return "receipts/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String ReceiptController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        Receipt receipt = Receipt.findReceipt(id);
        receipt.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/receipts";
    }
    
    void ReceiptController.populateEditForm(Model uiModel, Receipt receipt) {
        uiModel.addAttribute("receipt", receipt);
        uiModel.addAttribute("customers", Customer.findAllCustomers());
        uiModel.addAttribute("employees", Employee.findAllEmployees());
        uiModel.addAttribute("orderses", Orders.findAllOrderses());
    }
    
    String ReceiptController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        } catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}
