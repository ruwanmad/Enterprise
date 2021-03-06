package com.servicemaster.models;
// Generated Sep 11, 2017 10:23:59 AM by Hibernate Tools 4.3.1


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Uom generated by hbm2java
 */
public class Uom  implements java.io.Serializable {


     private String uomCode;
     private String uomSymble;
     private String uomName;
     private Integer isActive;
     private Date createdDate;
     private Date createdTime;
     private Integer createdUser;
     private Date modifiedDate;
     private Date modifiedTime;
     private Integer modifiedUser;
     private String remarks;
     private Set itemsForBuyingUom = new HashSet(0);
     private Set itemsForSellingUom = new HashSet(0);
     private Set uomConversionsForUomUomCodeFrom = new HashSet(0);
     private Set uomConversionsForUomUomCodeTo = new HashSet(0);
     private Set bomItems = new HashSet(0);

    public Uom() {
    }

	
    public Uom(String uomCode) {
        this.uomCode = uomCode;
    }
    public Uom(String uomCode, String uomSymble, String uomName, Integer isActive, Date createdDate, Date createdTime, Integer createdUser, Date modifiedDate, Date modifiedTime, Integer modifiedUser, String remarks, Set itemsForBuyingUom, Set itemsForSellingUom, Set uomConversionsForUomUomCodeFrom, Set uomConversionsForUomUomCodeTo, Set bomItems) {
       this.uomCode = uomCode;
       this.uomSymble = uomSymble;
       this.uomName = uomName;
       this.isActive = isActive;
       this.createdDate = createdDate;
       this.createdTime = createdTime;
       this.createdUser = createdUser;
       this.modifiedDate = modifiedDate;
       this.modifiedTime = modifiedTime;
       this.modifiedUser = modifiedUser;
       this.remarks = remarks;
       this.itemsForBuyingUom = itemsForBuyingUom;
       this.itemsForSellingUom = itemsForSellingUom;
       this.uomConversionsForUomUomCodeFrom = uomConversionsForUomUomCodeFrom;
       this.uomConversionsForUomUomCodeTo = uomConversionsForUomUomCodeTo;
       this.bomItems = bomItems;
    }
   
    public String getUomCode() {
        return this.uomCode;
    }
    
    public void setUomCode(String uomCode) {
        this.uomCode = uomCode;
    }
    public String getUomSymble() {
        return this.uomSymble;
    }
    
    public void setUomSymble(String uomSymble) {
        this.uomSymble = uomSymble;
    }
    public String getUomName() {
        return this.uomName;
    }
    
    public void setUomName(String uomName) {
        this.uomName = uomName;
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
    public String getRemarks() {
        return this.remarks;
    }
    
    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }
    public Set getItemsForBuyingUom() {
        return this.itemsForBuyingUom;
    }
    
    public void setItemsForBuyingUom(Set itemsForBuyingUom) {
        this.itemsForBuyingUom = itemsForBuyingUom;
    }
    public Set getItemsForSellingUom() {
        return this.itemsForSellingUom;
    }
    
    public void setItemsForSellingUom(Set itemsForSellingUom) {
        this.itemsForSellingUom = itemsForSellingUom;
    }
    public Set getUomConversionsForUomUomCodeFrom() {
        return this.uomConversionsForUomUomCodeFrom;
    }
    
    public void setUomConversionsForUomUomCodeFrom(Set uomConversionsForUomUomCodeFrom) {
        this.uomConversionsForUomUomCodeFrom = uomConversionsForUomUomCodeFrom;
    }
    public Set getUomConversionsForUomUomCodeTo() {
        return this.uomConversionsForUomUomCodeTo;
    }
    
    public void setUomConversionsForUomUomCodeTo(Set uomConversionsForUomUomCodeTo) {
        this.uomConversionsForUomUomCodeTo = uomConversionsForUomUomCodeTo;
    }
    public Set getBomItems() {
        return this.bomItems;
    }
    
    public void setBomItems(Set bomItems) {
        this.bomItems = bomItems;
    }




}


