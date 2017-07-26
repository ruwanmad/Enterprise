package com.servicemaster.models;
// Generated Jul 26, 2017 11:33:46 PM by Hibernate Tools 3.6.0


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Invoice generated by hbm2java
 */
public class Invoice  implements java.io.Serializable {


     private String invoiceNumber;
     private Service service;
     private Float netAmount;
     private Float discount;
     private Date createdDate;
     private Date createdTime;
     private Integer createdUser;
     private Date modifiedDate;
     private Date modifiedTime;
     private Integer modifiedUser;
     private int serviceServiceId;
     private Set payments = new HashSet(0);
     private Set invoiceLines = new HashSet(0);

    public Invoice() {
    }

	
    public Invoice(String invoiceNumber, Service service, int serviceServiceId) {
        this.invoiceNumber = invoiceNumber;
        this.service = service;
        this.serviceServiceId = serviceServiceId;
    }
    public Invoice(String invoiceNumber, Service service, Float netAmount, Float discount, Date createdDate, Date createdTime, Integer createdUser, Date modifiedDate, Date modifiedTime, Integer modifiedUser, int serviceServiceId, Set payments, Set invoiceLines) {
       this.invoiceNumber = invoiceNumber;
       this.service = service;
       this.netAmount = netAmount;
       this.discount = discount;
       this.createdDate = createdDate;
       this.createdTime = createdTime;
       this.createdUser = createdUser;
       this.modifiedDate = modifiedDate;
       this.modifiedTime = modifiedTime;
       this.modifiedUser = modifiedUser;
       this.serviceServiceId = serviceServiceId;
       this.payments = payments;
       this.invoiceLines = invoiceLines;
    }
   
    public String getInvoiceNumber() {
        return this.invoiceNumber;
    }
    
    public void setInvoiceNumber(String invoiceNumber) {
        this.invoiceNumber = invoiceNumber;
    }
    public Service getService() {
        return this.service;
    }
    
    public void setService(Service service) {
        this.service = service;
    }
    public Float getNetAmount() {
        return this.netAmount;
    }
    
    public void setNetAmount(Float netAmount) {
        this.netAmount = netAmount;
    }
    public Float getDiscount() {
        return this.discount;
    }
    
    public void setDiscount(Float discount) {
        this.discount = discount;
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
    public int getServiceServiceId() {
        return this.serviceServiceId;
    }
    
    public void setServiceServiceId(int serviceServiceId) {
        this.serviceServiceId = serviceServiceId;
    }
    public Set getPayments() {
        return this.payments;
    }
    
    public void setPayments(Set payments) {
        this.payments = payments;
    }
    public Set getInvoiceLines() {
        return this.invoiceLines;
    }
    
    public void setInvoiceLines(Set invoiceLines) {
        this.invoiceLines = invoiceLines;
    }




}


