package com.servicemaster.models;
// Generated Oct 29, 2017 8:03:34 PM by Hibernate Tools 4.3.1


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Rack generated by hbm2java
 */
public class Rack  implements java.io.Serializable {


     private String rackCode;
     private Storage storage;
     private String rackName;
     private Integer isActive;
     private Date createdDate;
     private Date createdTime;
     private Integer createdUser;
     private Date modifiedDate;
     private Date modifiedTime;
     private Integer modifiedUser;
     private String remark;
     private Set rackSlots = new HashSet(0);

    public Rack() {
    }

	
    public Rack(String rackCode, Storage storage) {
        this.rackCode = rackCode;
        this.storage = storage;
    }
    public Rack(String rackCode, Storage storage, String rackName, Integer isActive, Date createdDate, Date createdTime, Integer createdUser, Date modifiedDate, Date modifiedTime, Integer modifiedUser, String remark, Set rackSlots) {
       this.rackCode = rackCode;
       this.storage = storage;
       this.rackName = rackName;
       this.isActive = isActive;
       this.createdDate = createdDate;
       this.createdTime = createdTime;
       this.createdUser = createdUser;
       this.modifiedDate = modifiedDate;
       this.modifiedTime = modifiedTime;
       this.modifiedUser = modifiedUser;
       this.remark = remark;
       this.rackSlots = rackSlots;
    }
   
    public String getRackCode() {
        return this.rackCode;
    }
    
    public void setRackCode(String rackCode) {
        this.rackCode = rackCode;
    }
    public Storage getStorage() {
        return this.storage;
    }
    
    public void setStorage(Storage storage) {
        this.storage = storage;
    }
    public String getRackName() {
        return this.rackName;
    }
    
    public void setRackName(String rackName) {
        this.rackName = rackName;
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
    public Set getRackSlots() {
        return this.rackSlots;
    }
    
    public void setRackSlots(Set rackSlots) {
        this.rackSlots = rackSlots;
    }




}


