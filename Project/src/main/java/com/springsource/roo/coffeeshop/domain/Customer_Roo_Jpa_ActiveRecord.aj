// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.springsource.roo.coffeeshop.domain;

import com.springsource.roo.coffeeshop.domain.Customer;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Customer_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Customer.entityManager;
    
    public static final List<String> Customer.fieldNames4OrderClauseFilter = java.util.Arrays.asList("CustomerID", "CustomerFirstName", "CustomerLastName", "CustomerPhone");
    
    public static final EntityManager Customer.entityManager() {
        EntityManager em = new Customer().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Customer.countCustomers() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Customer o", Long.class).getSingleResult();
    }
    
    public static List<Customer> Customer.findAllCustomers() {
        return entityManager().createQuery("SELECT o FROM Customer o", Customer.class).getResultList();
    }
    
    public static List<Customer> Customer.findAllCustomers(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Customer o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Customer.class).getResultList();
    }
    
    public static Customer Customer.findCustomer(Long id) {
        if (id == null) return null;
        return entityManager().find(Customer.class, id);
    }
    
    public static List<Customer> Customer.findCustomerEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Customer o", Customer.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Customer> Customer.findCustomerEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Customer o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Customer.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Customer.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Customer.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Customer attached = Customer.findCustomer(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Customer.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Customer.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Customer Customer.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Customer merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
