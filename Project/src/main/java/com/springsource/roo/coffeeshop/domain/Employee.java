package com.springsource.roo.coffeeshop.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Employee {

    /**
     */
    @NotNull
    @Size(min = 2)
    private String EmployeeID;

    /**
     */
    @NotNull
    @Size(min = 2)
    private String EmployeeFirstName;

    /**
     */
    @NotNull
    @Size(min = 2)
    private String EmployeeLastName;

    /**
     */
    @NotNull
    @Size(min = 2)
    private String EmployeePhone;

    /**
     */
    private Float Salary;

    /**
     */
    @ManyToOne
    private Manager ManagerEdit;
}
