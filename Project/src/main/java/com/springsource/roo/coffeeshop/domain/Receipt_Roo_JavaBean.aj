// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.springsource.roo.coffeeshop.domain;

import com.springsource.roo.coffeeshop.domain.Employee;
import com.springsource.roo.coffeeshop.domain.Orders;
import com.springsource.roo.coffeeshop.domain.Receipt;
import java.util.Date;

privileged aspect Receipt_Roo_JavaBean {
    
    public String Receipt.getReceiptID() {
        return this.ReceiptID;
    }
    
    public void Receipt.setReceiptID(String ReceiptID) {
        this.ReceiptID = ReceiptID;
    }
    
    public Orders Receipt.getOrders() {
        return this.Orders;
    }
    
    public void Receipt.setOrders(Orders Orders) {
        this.Orders = Orders;
    }
    
    public Date Receipt.getDates() {
        return this.Dates;
    }
    
    public void Receipt.setDates(Date Dates) {
        this.Dates = Dates;
    }
    
    public String Receipt.getTimes() {
        return this.Times;
    }
    
    public void Receipt.setTimes(String Times) {
        this.Times = Times;
    }
    
    public Employee Receipt.getEmployee() {
        return this.Employee;
    }
    
    public void Receipt.setEmployee(Employee Employee) {
        this.Employee = Employee;
    }
    
    public Boolean Receipt.getStatus() {
        return this.Status;
    }
    
    public void Receipt.setStatus(Boolean Status) {
        this.Status = Status;
    }
    
}
