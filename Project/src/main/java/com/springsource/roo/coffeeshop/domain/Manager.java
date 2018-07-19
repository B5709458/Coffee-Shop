package com.springsource.roo.coffeeshop.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Manager {

    /**
     */
    @NotNull
    @Size(min = 2)
    private String ManagerID;

    /**
     */
    @NotNull
    @Size(min = 2)
    private String ManagerFirstName;

    /**
     */
    @NotNull
    @Size(min = 2)
    private String ManagerLastName;

    /**
     */
    @NotNull
    @Size(min = 2)
    private String ManagerPhone;
}
