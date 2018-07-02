package com.springsource.roo.coffeeshop.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;
import javax.validation.constraints.AssertFalse;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Orders {

    /**
     */
    @NotNull
    @Size(min = 2)
    private String OrderID;

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
    @AssertFalse
    private Boolean Status;

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
    private Menu Drink;

    /**
     */
    private Float TotalPrice;
}
