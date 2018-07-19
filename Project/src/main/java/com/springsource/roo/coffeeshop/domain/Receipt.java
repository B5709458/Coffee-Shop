package com.springsource.roo.coffeeshop.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.persistence.ManyToOne;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;

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
    private Orders Orders;

    /**
     */
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date Dates;

    /**
     */
    @NotNull
    private String Times;

    /**
     */
    @ManyToOne
    private Employee Employee;

    /**
     */
    private Boolean Status;
}
