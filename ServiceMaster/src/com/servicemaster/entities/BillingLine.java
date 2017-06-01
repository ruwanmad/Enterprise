package com.servicemaster.entities;
// Generated May 31, 2017 4:52:36 PM by Hibernate Tools 4.3.1


import java.util.Date;

/**
 * BillingLine generated by hbm2java
 */
public class BillingLine  implements java.io.Serializable {


     private int billingLineId;
     private Billing billing;
     private Float discount;
     private Float tax1;
     private Float tax2;
     private Float tax3;
     private Float tax4;
     private Float tax5;
     private Date createdDate;
     private Date createdTime;
     private Integer createdUser;
     private Date modifiedDate;
     private Date modifiedTime;
     private Integer modifiedUser;
     private String remark;

    public BillingLine() {
    }

	
    public BillingLine(int billingLineId, Billing billing) {
        this.billingLineId = billingLineId;
        this.billing = billing;
    }
    public BillingLine(int billingLineId, Billing billing, Float discount, Float tax1, Float tax2, Float tax3, Float tax4, Float tax5, Date createdDate, Date createdTime, Integer createdUser, Date modifiedDate, Date modifiedTime, Integer modifiedUser, String remark) {
       this.billingLineId = billingLineId;
       this.billing = billing;
       this.discount = discount;
       this.tax1 = tax1;
       this.tax2 = tax2;
       this.tax3 = tax3;
       this.tax4 = tax4;
       this.tax5 = tax5;
       this.createdDate = createdDate;
       this.createdTime = createdTime;
       this.createdUser = createdUser;
       this.modifiedDate = modifiedDate;
       this.modifiedTime = modifiedTime;
       this.modifiedUser = modifiedUser;
       this.remark = remark;
    }
   
    public int getBillingLineId() {
        return this.billingLineId;
    }
    
    public void setBillingLineId(int billingLineId) {
        this.billingLineId = billingLineId;
    }
    public Billing getBilling() {
        return this.billing;
    }
    
    public void setBilling(Billing billing) {
        this.billing = billing;
    }
    public Float getDiscount() {
        return this.discount;
    }
    
    public void setDiscount(Float discount) {
        this.discount = discount;
    }
    public Float getTax1() {
        return this.tax1;
    }
    
    public void setTax1(Float tax1) {
        this.tax1 = tax1;
    }
    public Float getTax2() {
        return this.tax2;
    }
    
    public void setTax2(Float tax2) {
        this.tax2 = tax2;
    }
    public Float getTax3() {
        return this.tax3;
    }
    
    public void setTax3(Float tax3) {
        this.tax3 = tax3;
    }
    public Float getTax4() {
        return this.tax4;
    }
    
    public void setTax4(Float tax4) {
        this.tax4 = tax4;
    }
    public Float getTax5() {
        return this.tax5;
    }
    
    public void setTax5(Float tax5) {
        this.tax5 = tax5;
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




}


