package com.springsource.roo.coffeeshop.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Customer {

    /**
     */
    @NotNull
    @Size(min = 2)
    private String CustomerID;

    /**
     */
    @NotNull
    @Size(min = 2)
    private String CustomerFirstName;

    /**
     */
    @NotNull
    @Size(min = 2)
    private String CustomerLastName;

    /**
     */
    @NotNull
    @Size(min = 2)
    private String CustomerPhone;
}
