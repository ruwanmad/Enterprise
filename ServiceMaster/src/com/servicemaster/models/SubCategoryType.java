package com.servicemaster.models;
// Generated Sep 9, 2017 3:00:13 PM by Hibernate Tools 4.3.1


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * SubCategoryType generated by hbm2java
 */
public class SubCategoryType  implements java.io.Serializable {


     private String subCategoryTypeCode;
     private String subCategoryTypeName;
     private Integer isActive;
     private String remark;
     private Date createdDate;
     private Date createdTime;
     private Integer createdUser;
     private Date modifiedDate;
     private Date modifiedTime;
     private Integer modifiedUser;
     private Set subCategories = new HashSet(0);

    public SubCategoryType() {
    }

	
    public SubCategoryType(String subCategoryTypeCode) {
        this.subCategoryTypeCode = subCategoryTypeCode;
    }
    public SubCategoryType(String subCategoryTypeCode, String subCategoryTypeName, Integer isActive, String remark, Date createdDate, Date createdTime, Integer createdUser, Date modifiedDate, Date modifiedTime, Integer modifiedUser, Set subCategories) {
       this.subCategoryTypeCode = subCategoryTypeCode;
       this.subCategoryTypeName = subCategoryTypeName;
       this.isActive = isActive;
       this.remark = remark;
       this.createdDate = createdDate;
       this.createdTime = createdTime;
       this.createdUser = createdUser;
       this.modifiedDate = modifiedDate;
       this.modifiedTime = modifiedTime;
       this.modifiedUser = modifiedUser;
       this.subCategories = subCategories;
    }
   
    public String getSubCategoryTypeCode() {
        return this.subCategoryTypeCode;
    }
    
    public void setSubCategoryTypeCode(String subCategoryTypeCode) {
        this.subCategoryTypeCode = subCategoryTypeCode;
    }
    public String getSubCategoryTypeName() {
        return this.subCategoryTypeName;
    }
    
    public void setSubCategoryTypeName(String subCategoryTypeName) {
        this.subCategoryTypeName = subCategoryTypeName;
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
    public Set getSubCategories() {
        return this.subCategories;
    }
    
    public void setSubCategories(Set subCategories) {
        this.subCategories = subCategories;
    }




}


