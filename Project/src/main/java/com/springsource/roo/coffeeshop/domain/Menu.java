package com.springsource.roo.coffeeshop.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Menu {

    /**
     */
    @NotNull
    @Size(min = 2)
    private String DrinkID;

    /**
     */
    @NotNull
    @Size(min = 2)
    private String DrinkName;

    /**
     */
    @NotNull
    private String DrinkSize;

    /**
     */
    private Integer DrinkPrice;
}
