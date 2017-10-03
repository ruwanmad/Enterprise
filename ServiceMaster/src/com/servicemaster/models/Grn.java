package com.servicemaster.models;
// Generated Oct 1, 2017 7:12:27 PM by Hibernate Tools 4.3.1


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Grn generated by hbm2java
 */
public class Grn  implements java.io.Serializable {


     private String grnCode;
     private BusinessPartner businessPartner;
     private String grnReference;
     private Date grnTime;
     private Date grnDate;
     private String handedOverBy;
     private String batch;
     private Date createdDate;
     private Date createdTime;
     private Integer createdUser;
     private Date modifiedDate;
     private Date modifiedTime;
     private Integer modifiedUser;
     private String remark;
     private Set grnLines = new HashSet(0);
     private Set stocks = new HashSet(0);
     private Set accountPostings = new HashSet(0);

    public Grn() {
    }

	
    public Grn(String grnCode, BusinessPartner businessPartner, String grnReference) {
        this.grnCode = grnCode;
        this.businessPartner = businessPartner;
        this.grnReference = grnReference;
    }
    public Grn(String grnCode, BusinessPartner businessPartner, String grnReference, Date grnTime, Date grnDate, String handedOverBy, String batch, Date createdDate, Date createdTime, Integer createdUser, Date modifiedDate, Date modifiedTime, Integer modifiedUser, String remark, Set grnLines, Set stocks, Set accountPostings) {
       this.grnCode = grnCode;
       this.businessPartner = businessPartner;
       this.grnReference = grnReference;
       this.grnTime = grnTime;
       this.grnDate = grnDate;
       this.handedOverBy = handedOverBy;
       this.batch = batch;
       this.createdDate = createdDate;
       this.createdTime = createdTime;
       this.createdUser = createdUser;
       this.modifiedDate = modifiedDate;
       this.modifiedTime = modifiedTime;
       this.modifiedUser = modifiedUser;
       this.remark = remark;
       this.grnLines = grnLines;
       this.stocks = stocks;
       this.accountPostings = accountPostings;
    }
   
    public String getGrnCode() {
        return this.grnCode;
    }
    
    public void setGrnCode(String grnCode) {
        this.grnCode = grnCode;
    }
    public BusinessPartner getBusinessPartner() {
        return this.businessPartner;
    }
    
    public void setBusinessPartner(BusinessPartner businessPartner) {
        this.businessPartner = businessPartner;
    }
    public String getGrnReference() {
        return this.grnReference;
    }
    
    public void setGrnReference(String grnReference) {
        this.grnReference = grnReference;
    }
    public Date getGrnTime() {
        return this.grnTime;
    }
    
    public void setGrnTime(Date grnTime) {
        this.grnTime = grnTime;
    }
    public Date getGrnDate() {
        return this.grnDate;
    }
    
    public void setGrnDate(Date grnDate) {
        this.grnDate = grnDate;
    }
    public String getHandedOverBy() {
        return this.handedOverBy;
    }
    
    public void setHandedOverBy(String handedOverBy) {
        this.handedOverBy = handedOverBy;
    }
    public String getBatch() {
        return this.batch;
    }
    
    public void setBatch(String batch) {
        this.batch = batch;
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
    public Set getGrnLines() {
        return this.grnLines;
    }
    
    public void setGrnLines(Set grnLines) {
        this.grnLines = grnLines;
    }
    public Set getStocks() {
        return this.stocks;
    }
    
    public void setStocks(Set stocks) {
        this.stocks = stocks;
    }
    public Set getAccountPostings() {
        return this.accountPostings;
    }
    
    public void setAccountPostings(Set accountPostings) {
        this.accountPostings = accountPostings;
    }




}


