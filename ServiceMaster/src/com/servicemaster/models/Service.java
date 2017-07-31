package com.servicemaster.models;
// Generated Jul 31, 2017 10:27:22 PM by Hibernate Tools 4.3.1


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Service generated by hbm2java
 */
public class Service  implements java.io.Serializable {


     private String serviceCode;
     private ServiceBay serviceBay;
     private Vehicle vehicle;
     private Date createdDate;
     private Date createdTime;
     private Integer createdUser;
     private Date modifiedDate;
     private Date modifiedTime;
     private Integer modifiedUser;
     private String servicecol;
     private Set invoices = new HashSet(0);
     private Set serviceHasItems = new HashSet(0);

    public Service() {
    }

	
    public Service(String serviceCode, ServiceBay serviceBay, Vehicle vehicle) {
        this.serviceCode = serviceCode;
        this.serviceBay = serviceBay;
        this.vehicle = vehicle;
    }
    public Service(String serviceCode, ServiceBay serviceBay, Vehicle vehicle, Date createdDate, Date createdTime, Integer createdUser, Date modifiedDate, Date modifiedTime, Integer modifiedUser, String servicecol, Set invoices, Set serviceHasItems) {
       this.serviceCode = serviceCode;
       this.serviceBay = serviceBay;
       this.vehicle = vehicle;
       this.createdDate = createdDate;
       this.createdTime = createdTime;
       this.createdUser = createdUser;
       this.modifiedDate = modifiedDate;
       this.modifiedTime = modifiedTime;
       this.modifiedUser = modifiedUser;
       this.servicecol = servicecol;
       this.invoices = invoices;
       this.serviceHasItems = serviceHasItems;
    }
   
    public String getServiceCode() {
        return this.serviceCode;
    }
    
    public void setServiceCode(String serviceCode) {
        this.serviceCode = serviceCode;
    }
    public ServiceBay getServiceBay() {
        return this.serviceBay;
    }
    
    public void setServiceBay(ServiceBay serviceBay) {
        this.serviceBay = serviceBay;
    }
    public Vehicle getVehicle() {
        return this.vehicle;
    }
    
    public void setVehicle(Vehicle vehicle) {
        this.vehicle = vehicle;
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
    public String getServicecol() {
        return this.servicecol;
    }
    
    public void setServicecol(String servicecol) {
        this.servicecol = servicecol;
    }
    public Set getInvoices() {
        return this.invoices;
    }
    
    public void setInvoices(Set invoices) {
        this.invoices = invoices;
    }
    public Set getServiceHasItems() {
        return this.serviceHasItems;
    }
    
    public void setServiceHasItems(Set serviceHasItems) {
        this.serviceHasItems = serviceHasItems;
    }




}


