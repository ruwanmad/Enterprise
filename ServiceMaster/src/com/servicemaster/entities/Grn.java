package com.servicemaster.entities;
// Generated May 31, 2017 4:52:36 PM by Hibernate Tools 4.3.1


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Grn generated by hbm2java
 */
public class Grn  implements java.io.Serializable {


     private int grnId;
     private String grnNumber;
     private Date grnDate;
     private Date grnTime;
     private String handedOverBy;
     private Date createdDate;
     private Date createdTime;
     private Integer createdUser;
     private Date midifiedDate;
     private Date modifiedTime;
     private Integer modifiedUser;
     private String remark;
     private Set grnLines = new HashSet(0);

    public Grn() {
    }

	
    public Grn(int grnId) {
        this.grnId = grnId;
    }
    public Grn(int grnId, String grnNumber, Date grnDate, Date grnTime, String handedOverBy, Date createdDate, Date createdTime, Integer createdUser, Date midifiedDate, Date modifiedTime, Integer modifiedUser, String remark, Set grnLines) {
       this.grnId = grnId;
       this.grnNumber = grnNumber;
       this.grnDate = grnDate;
       this.grnTime = grnTime;
       this.handedOverBy = handedOverBy;
       this.createdDate = createdDate;
       this.createdTime = createdTime;
       this.createdUser = createdUser;
       this.midifiedDate = midifiedDate;
       this.modifiedTime = modifiedTime;
       this.modifiedUser = modifiedUser;
       this.remark = remark;
       this.grnLines = grnLines;
    }
   
    public int getGrnId() {
        return this.grnId;
    }
    
    public void setGrnId(int grnId) {
        this.grnId = grnId;
    }
    public String getGrnNumber() {
        return this.grnNumber;
    }
    
    public void setGrnNumber(String grnNumber) {
        this.grnNumber = grnNumber;
    }
    public Date getGrnDate() {
        return this.grnDate;
    }
    
    public void setGrnDate(Date grnDate) {
        this.grnDate = grnDate;
    }
    public Date getGrnTime() {
        return this.grnTime;
    }
    
    public void setGrnTime(Date grnTime) {
        this.grnTime = grnTime;
    }
    public String getHandedOverBy() {
        return this.handedOverBy;
    }
    
    public void setHandedOverBy(String handedOverBy) {
        this.handedOverBy = handedOverBy;
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
    public Date getMidifiedDate() {
        return this.midifiedDate;
    }
    
    public void setMidifiedDate(Date midifiedDate) {
        this.midifiedDate = midifiedDate;
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




}


