// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.springsource.roo.coffeeshop.domain;

import com.springsource.roo.coffeeshop.domain.Receipt;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect Receipt_Roo_Jpa_Entity {
    
    declare @type: Receipt: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long Receipt.id;
    
    @Version
    @Column(name = "version")
    private Integer Receipt.version;
    
    public Long Receipt.getId() {
        return this.id;
    }
    
    public void Receipt.setId(Long id) {
        this.id = id;
    }
    
    public Integer Receipt.getVersion() {
        return this.version;
    }
    
    public void Receipt.setVersion(Integer version) {
        this.version = version;
    }
    
}
