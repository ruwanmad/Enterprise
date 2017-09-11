package com.servicemaster.models;
// Generated Sep 11, 2017 10:23:59 AM by Hibernate Tools 4.3.1

import java.util.Date;

/**
 * BomItem generated by hbm2java
 */
public class BomItem implements java.io.Serializable {

    private String bomItemCode;
    private Bom bom;
    private Item item;
    private Uom uom;
    private Float bomItemQuantity;
    private Float unitPrice;
    private Float sellingPrice;
    private Date createdDate;
    private Date createdTime;
    private Integer createdUser;
    private Date modifiedDate;
    private Date modifiedTime;
    private Integer modifiedUser;
    private String remark;

    public BomItem() {
    }

    public BomItem(String bomItemCode, Bom bom, Item item, Uom uom) {
        this.bomItemCode = bomItemCode;
        this.bom = bom;
        this.item = item;
        this.uom = uom;
    }

    public BomItem(String bomItemCode, Bom bom, Item item, Uom uom, Float bomItemQuantity, Float unitPrice, Float sellingPrice, Date createdDate, Date createdTime, Integer createdUser, Date modifiedDate, Date modifiedTime, Integer modifiedUser, String remark) {
        this.bomItemCode = bomItemCode;
        this.bom = bom;
        this.item = item;
        this.uom = uom;
        this.bomItemQuantity = bomItemQuantity;
        this.unitPrice = unitPrice;
        this.sellingPrice = sellingPrice;
        this.createdDate = createdDate;
        this.createdTime = createdTime;
        this.createdUser = createdUser;
        this.modifiedDate = modifiedDate;
        this.modifiedTime = modifiedTime;
        this.modifiedUser = modifiedUser;
        this.remark = remark;
    }

    public String getBomItemCode() {
        return this.bomItemCode;
    }

    public void setBomItemCode(String bomItemCode) {
        this.bomItemCode = bomItemCode;
    }

    public Bom getBom() {
        return this.bom;
    }

    public void setBom(Bom bom) {
        this.bom = bom;
    }

    public Item getItem() {
        return this.item;
    }

    public void setItem(Item item) {
        this.item = item;
    }

    public Uom getUom() {
        return this.uom;
    }

    public void setUom(Uom uom) {
        this.uom = uom;
    }

    public Float getBomItemQuantity() {
        return this.bomItemQuantity;
    }

    public void setBomItemQuantity(Float bomItemQuantity) {
        this.bomItemQuantity = bomItemQuantity;
    }

    public Float getUnitPrice() {
        return this.unitPrice;
    }

    public void setUnitPrice(Float unitPrice) {
        this.unitPrice = unitPrice;
    }

    public Float getSellingPrice() {
        return this.sellingPrice;
    }

    public void setSellingPrice(Float sellingPrice) {
        this.sellingPrice = sellingPrice;
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
