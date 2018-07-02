package com.springsource.roo.coffeeshop.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.persistence.ManyToOne;
import javax.validation.constraints.AssertFalse;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Receipt {

    /**
     */
    @NotNull
    @Size(min = 2)
    private String ReceiptID;

    /**
     */
    @ManyToOne
    private Employee Employee;

    /**
     */
    @ManyToOne
    private Customer Customer;

    /**
     */
    @ManyToOne
    private Orders Orders;

    /**
     */
    @AssertFalse
    private Boolean Status;
}
