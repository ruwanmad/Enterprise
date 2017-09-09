package com.servicemaster.models;
// Generated Sep 9, 2017 3:00:13 PM by Hibernate Tools 4.3.1

import java.util.Date;

/**
 * SellingPrice generated by hbm2java
 */
public class SellingPrice implements java.io.Serializable {

    private Integer sellingPriceId;
    private Item item;
    private Float sellingPrice;
    private Date effectiveDate;
    private Date createdDate;
    private Date createdTime;
    private Integer createdUser;
    private Date modifiedDate;
    private Date modifiedTime;
    private Integer modifiedUser;
    private String remark;

    public SellingPrice() {
    }

    public SellingPrice(Item item) {
        this.item = item;
    }

    public SellingPrice(Item item, Float sellingPrice, Date effectiveDate, Date createdDate, Date createdTime, Integer createdUser, Date modifiedDate, Date modifiedTime, Integer modifiedUser, String remark) {
        this.item = item;
        this.sellingPrice = sellingPrice;
        this.effectiveDate = effectiveDate;
        this.createdDate = createdDate;
        this.createdTime = createdTime;
        this.createdUser = createdUser;
        this.modifiedDate = modifiedDate;
        this.modifiedTime = modifiedTime;
        this.modifiedUser = modifiedUser;
        this.remark = remark;
    }

    public Integer getSellingPriceId() {
        return this.sellingPriceId;
    }

    public void setSellingPriceId(Integer sellingPriceId) {
        this.sellingPriceId = sellingPriceId;
    }

    public Item getItem() {
        return this.item;
    }

    public void setItem(Item item) {
        this.item = item;
    }

    public Float getSellingPrice() {
        return this.sellingPrice;
    }

    public void setSellingPrice(Float sellingPrice) {
        this.sellingPrice = sellingPrice;
    }

    public Date getEffectiveDate() {
        return this.effectiveDate;
    }

    public void setEffectiveDate(Date effectiveDate) {
        this.effectiveDate = effectiveDate;
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
