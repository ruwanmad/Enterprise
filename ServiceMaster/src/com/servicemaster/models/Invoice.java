package com.servicemaster.models;
// Generated Oct 6, 2017 7:38:33 PM by Hibernate Tools 4.3.1


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Invoice generated by hbm2java
 */
public class Invoice  implements java.io.Serializable {


     private String invoiceNumber;
     private Sale sale;
     private Integer isActive;
     private Date createdDate;
     private Date createdTime;
     private Integer createdUser;
     private Date modifiedDate;
     private Date modifiedTime;
     private Integer modifiedUser;
     private Set accountPostings = new HashSet(0);
     private Set payments = new HashSet(0);

    public Invoice() {
    }

	
    public Invoice(String invoiceNumber, Sale sale) {
        this.invoiceNumber = invoiceNumber;
        this.sale = sale;
    }
    public Invoice(String invoiceNumber, Sale sale, Integer isActive, Date createdDate, Date createdTime, Integer createdUser, Date modifiedDate, Date modifiedTime, Integer modifiedUser, Set accountPostings, Set payments) {
       this.invoiceNumber = invoiceNumber;
       this.sale = sale;
       this.isActive = isActive;
       this.createdDate = createdDate;
       this.createdTime = createdTime;
       this.createdUser = createdUser;
       this.modifiedDate = modifiedDate;
       this.modifiedTime = modifiedTime;
       this.modifiedUser = modifiedUser;
       this.accountPostings = accountPostings;
       this.payments = payments;
    }
   
    public String getInvoiceNumber() {
        return this.invoiceNumber;
    }
    
    public void setInvoiceNumber(String invoiceNumber) {
        this.invoiceNumber = invoiceNumber;
    }
    public Sale getSale() {
        return this.sale;
    }
    
    public void setSale(Sale sale) {
        this.sale = sale;
    }
    public Integer getIsActive() {
        return this.isActive;
    }
    
    public void setIsActive(Integer isActive) {
        this.isActive = isActive;
    }
    public Date getCreatedDate() {
        return this.createdDate;
    }
    
    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }
    public Date getCreatedTime() {
        return this.createdTime;
    }
    
    public void setCreatedTime(Date createdTime) {
        this.createdTime = createdTime;
    }
    public Integer getCreatedUser() {
        return this.createdUser;
    }
    
    public void setCreatedUser(Integer createdUser) {
        this.createdUser = createdUser;
    }
    public Date getModifiedDate() {
        return this.modifiedDate;
    }
    
    public void setModifiedDate(Date modifiedDate) {
        this.modifiedDate = modifiedDate;
    }
    public Date getModifiedTime() {
        return this.modifiedTime;
    }
    
    public void setModifiedTime(Date modifiedTime) {
        this.modifiedTime = modifiedTime;
    }
    public Integer getModifiedUser() {
        return this.modifiedUser;
    }
    
    public void setModifiedUser(Integer modifiedUser) {
        this.modifiedUser = modifiedUser;
    }
    public Set getAccountPostings() {
        return this.accountPostings;
    }
    
    public void setAccountPostings(Set accountPostings) {
        this.accountPostings = accountPostings;
    }
    public Set getPayments() {
        return this.payments;
    }
    
    public void setPayments(Set payments) {
        this.payments = payments;
    }




}


