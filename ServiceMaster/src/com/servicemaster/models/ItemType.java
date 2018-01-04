package com.servicemaster.models;
// Generated Dec 31, 2017 12:24:02 PM by Hibernate Tools 4.3.1


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * ItemType generated by hbm2java
 */
public class ItemType  implements java.io.Serializable {


     private String itemTypeCode;
     private String itemTypeName;
     private Integer isActive;
     private String remark;
     private Date createdDate;
     private Date createdTime;
     private Integer createdUser;
     private Date modifiedDate;
     private Date modifiedTime;
     private Integer modifiedUser;
     private Set items = new HashSet(0);

    public ItemType() {
    }

	
    public ItemType(String itemTypeCode) {
        this.itemTypeCode = itemTypeCode;
    }
    public ItemType(String itemTypeCode, String itemTypeName, Integer isActive, String remark, Date createdDate, Date createdTime, Integer createdUser, Date modifiedDate, Date modifiedTime, Integer modifiedUser, Set items) {
       this.itemTypeCode = itemTypeCode;
       this.itemTypeName = itemTypeName;
       this.isActive = isActive;
       this.remark = remark;
       this.createdDate = createdDate;
       this.createdTime = createdTime;
       this.createdUser = createdUser;
       this.modifiedDate = modifiedDate;
       this.modifiedTime = modifiedTime;
       this.modifiedUser = modifiedUser;
       this.items = items;
    }
   
    public String getItemTypeCode() {
        return this.itemTypeCode;
    }
    
    public void setItemTypeCode(String itemTypeCode) {
        this.itemTypeCode = itemTypeCode;
    }
    public String getItemTypeName() {
        return this.itemTypeName;
    }
    
    public void setItemTypeName(String itemTypeName) {
        this.itemTypeName = itemTypeName;
    }
    public Integer getIsActive() {
        return this.isActive;
    }
    
    public void setIsActive(Integer isActive) {
        this.isActive = isActive;
    }
    public String getRemark() {
        return this.remark;
    }
    
    public void setRemark(String remark) {
        this.remark = remark;
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
    public Set getItems() {
        return this.items;
    }
    
    public void setItems(Set items) {
        this.items = items;
    }




}


