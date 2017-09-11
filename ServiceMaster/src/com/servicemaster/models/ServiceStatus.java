package com.servicemaster.models;
// Generated Sep 11, 2017 10:23:59 AM by Hibernate Tools 4.3.1

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * ServiceStatus generated by hbm2java
 */
public class ServiceStatus implements java.io.Serializable {

    private Integer statusId;
    private String statusDescription;
    private Date createDate;
    private Date createTime;
    private Integer createdUser;
    private Date modifiedDate;
    private Date modifiedTime;
    private Integer modifiedUser;
    private String remark;
    private Set services = new HashSet(0);

    public ServiceStatus() {
    }

    public ServiceStatus(Integer statusId) {
        this.statusId = statusId;
    }

    public ServiceStatus(String statusDescription, Date createDate, Date createTime, Integer createdUser, Date modifiedDate, Date modifiedTime, Integer modifiedUser, String remark, Set services) {
        this.statusDescription = statusDescription;
        this.createDate = createDate;
        this.createTime = createTime;
        this.createdUser = createdUser;
        this.modifiedDate = modifiedDate;
        this.modifiedTime = modifiedTime;
        this.modifiedUser = modifiedUser;
        this.remark = remark;
        this.services = services;
    }

    public Integer getStatusId() {
        return this.statusId;
    }

    public void setStatusId(Integer statusId) {
        this.statusId = statusId;
    }

    public String getStatusDescription() {
        return this.statusDescription;
    }

    public void setStatusDescription(String statusDescription) {
        this.statusDescription = statusDescription;
    }

    public Date getCreateDate() {
        return this.createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public Date getCreateTime() {
        return this.createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
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

    public Set getServices() {
        return this.services;
    }

    public void setServices(Set services) {
        this.services = services;
    }

}
