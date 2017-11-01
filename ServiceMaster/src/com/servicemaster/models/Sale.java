package com.servicemaster.models;
// Generated Nov 1, 2017 5:06:11 PM by Hibernate Tools 4.3.1


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Sale generated by hbm2java
 */
public class Sale  implements java.io.Serializable {


     private String saleCode;
     private SaleStatus saleStatus;
     private ServiceBay serviceBay;
     private Vehicle vehicle;
     private Float previousMilage;
     private Float subTotal;
     private Float discount;
     private Float grandTotal;
     private Integer discounted;
     private Integer isActive;
     private Date createdDate;
     private Date createdTime;
     private Integer createdUser;
     private Date modifiedDate;
     private Date modifiedTime;
     private Integer modifiedUser;
     private String remark;
     private Float currentMilage;
     private Float nextMilage;
     private Set saleEmployees = new HashSet(0);
     private Set saleItems = new HashSet(0);
     private Set invoices = new HashSet(0);

    public Sale() {
    }

	
    public Sale(String saleCode, SaleStatus saleStatus) {
        this.saleCode = saleCode;
        this.saleStatus = saleStatus;
    }
    public Sale(String saleCode, SaleStatus saleStatus, ServiceBay serviceBay, Vehicle vehicle, Float previousMilage, Float subTotal, Float discount, Float grandTotal, Integer discounted, Integer isActive, Date createdDate, Date createdTime, Integer createdUser, Date modifiedDate, Date modifiedTime, Integer modifiedUser, String remark, Float currentMilage, Float nextMilage, Set saleEmployees, Set saleItems, Set invoices) {
       this.saleCode = saleCode;
       this.saleStatus = saleStatus;
       this.serviceBay = serviceBay;
       this.vehicle = vehicle;
       this.previousMilage = previousMilage;
       this.subTotal = subTotal;
       this.discount = discount;
       this.grandTotal = grandTotal;
       this.discounted = discounted;
       this.isActive = isActive;
       this.createdDate = createdDate;
       this.createdTime = createdTime;
       this.createdUser = createdUser;
       this.modifiedDate = modifiedDate;
       this.modifiedTime = modifiedTime;
       this.modifiedUser = modifiedUser;
       this.remark = remark;
       this.currentMilage = currentMilage;
       this.nextMilage = nextMilage;
       this.saleEmployees = saleEmployees;
       this.saleItems = saleItems;
       this.invoices = invoices;
    }
   
    public String getSaleCode() {
        return this.saleCode;
    }
    
    public void setSaleCode(String saleCode) {
        this.saleCode = saleCode;
    }
    public SaleStatus getSaleStatus() {
        return this.saleStatus;
    }
    
    public void setSaleStatus(SaleStatus saleStatus) {
        this.saleStatus = saleStatus;
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
    public Float getPreviousMilage() {
        return this.previousMilage;
    }
    
    public void setPreviousMilage(Float previousMilage) {
        this.previousMilage = previousMilage;
    }
    public Float getSubTotal() {
        return this.subTotal;
    }
    
    public void setSubTotal(Float subTotal) {
        this.subTotal = subTotal;
    }
    public Float getDiscount() {
        return this.discount;
    }
    
    public void setDiscount(Float discount) {
        this.discount = discount;
    }
    public Float getGrandTotal() {
        return this.grandTotal;
    }
    
    public void setGrandTotal(Float grandTotal) {
        this.grandTotal = grandTotal;
    }
    public Integer getDiscounted() {
        return this.discounted;
    }
    
    public void setDiscounted(Integer discounted) {
        this.discounted = discounted;
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
    public String getRemark() {
        return this.remark;
    }
    
    public void setRemark(String remark) {
        this.remark = remark;
    }
    public Float getCurrentMilage() {
        return this.currentMilage;
    }
    
    public void setCurrentMilage(Float currentMilage) {
        this.currentMilage = currentMilage;
    }
    public Float getNextMilage() {
        return this.nextMilage;
    }
    
    public void setNextMilage(Float nextMilage) {
        this.nextMilage = nextMilage;
    }
    public Set getSaleEmployees() {
        return this.saleEmployees;
    }
    
    public void setSaleEmployees(Set saleEmployees) {
        this.saleEmployees = saleEmployees;
    }
    public Set getSaleItems() {
        return this.saleItems;
    }
    
    public void setSaleItems(Set saleItems) {
        this.saleItems = saleItems;
    }
    public Set getInvoices() {
        return this.invoices;
    }
    
    public void setInvoices(Set invoices) {
        this.invoices = invoices;
    }




}


