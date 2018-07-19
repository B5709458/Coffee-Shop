package com.springsource.roo.coffeeshop.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.persistence.ManyToOne;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.ManyToMany;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Orders {

    /**
     */
    @NotNull
    @Size(min = 2)
    private String OrdersID;

    /**
     */
    @ManyToOne
    private Customer Customer;

    /**
     */
    @ManyToOne
    private Employee Employee;

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL)
    private List<Menu> DrinkMenu = new ArrayList<Menu>();

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
    private Float TotalPrice;
}
