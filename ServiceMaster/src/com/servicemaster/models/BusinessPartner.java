package com.servicemaster.models;
// Generated Oct 29, 2017 8:03:34 PM by Hibernate Tools 4.3.1


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * BusinessPartner generated by hbm2java
 */
public class BusinessPartner  implements java.io.Serializable {


     private String businessPartnerCode;
     private String firstName;
     private String lastName;
     private String searchKey;
     private String nic;
     private Date birthDay;
     private boolean isCustomer;
     private boolean isSupplier;
     private boolean isEmployee;
     private Integer isActive;
     private Date createdDate;
     private Date createdTime;
     private Integer createdUser;
     private Date modifiedDate;
     private Date modifiedTime;
     private Integer modifiedUser;
     private String remarks;
     private Set businessAddresses = new HashSet(0);
     private Set users = new HashSet(0);
     private Set businessTelephones = new HashSet(0);
     private Set grns = new HashSet(0);
     private Set saleEmployees = new HashSet(0);
     private Set accounts = new HashSet(0);
     private Set accountPostings = new HashSet(0);
     private Set vehicles = new HashSet(0);

    public BusinessPartner() {
    }

	
    public BusinessPartner(String businessPartnerCode, String firstName, boolean isCustomer, boolean isSupplier, boolean isEmployee) {
        this.businessPartnerCode = businessPartnerCode;
        this.firstName = firstName;
        this.isCustomer = isCustomer;
        this.isSupplier = isSupplier;
        this.isEmployee = isEmployee;
    }
    public BusinessPartner(String businessPartnerCode, String firstName, String lastName, String searchKey, String nic, Date birthDay, boolean isCustomer, boolean isSupplier, boolean isEmployee, Integer isActive, Date createdDate, Date createdTime, Integer createdUser, Date modifiedDate, Date modifiedTime, Integer modifiedUser, String remarks, Set businessAddresses, Set users, Set businessTelephones, Set grns, Set saleEmployees, Set accounts, Set accountPostings, Set vehicles) {
       this.businessPartnerCode = businessPartnerCode;
       this.firstName = firstName;
       this.lastName = lastName;
       this.searchKey = searchKey;
       this.nic = nic;
       this.birthDay = birthDay;
       this.isCustomer = isCustomer;
       this.isSupplier = isSupplier;
       this.isEmployee = isEmployee;
       this.isActive = isActive;
       this.createdDate = createdDate;
       this.createdTime = createdTime;
       this.createdUser = createdUser;
       this.modifiedDate = modifiedDate;
       this.modifiedTime = modifiedTime;
       this.modifiedUser = modifiedUser;
       this.remarks = remarks;
       this.businessAddresses = businessAddresses;
       this.users = users;
       this.businessTelephones = businessTelephones;
       this.grns = grns;
       this.saleEmployees = saleEmployees;
       this.accounts = accounts;
       this.accountPostings = accountPostings;
       this.vehicles = vehicles;
    }
   
    public String getBusinessPartnerCode() {
        return this.businessPartnerCode;
    }
    
    public void setBusinessPartnerCode(String businessPartnerCode) {
        this.businessPartnerCode = businessPartnerCode;
    }
    public String getFirstName() {
        return this.firstName;
    }
    
    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }
    public String getLastName() {
        return this.lastName;
    }
    
    public void setLastName(String lastName) {
        this.lastName = lastName;
    }
    public String getSearchKey() {
        return this.searchKey;
    }
    
    public void setSearchKey(String searchKey) {
        this.searchKey = searchKey;
    }
    public String getNic() {
        return this.nic;
    }
    
    public void setNic(String nic) {
        this.nic = nic;
    }
    public Date getBirthDay() {
        return this.birthDay;
    }
    
    public void setBirthDay(Date birthDay) {
        this.birthDay = birthDay;
    }
    public boolean isIsCustomer() {
        return this.isCustomer;
    }
    
    public void setIsCustomer(boolean isCustomer) {
        this.isCustomer = isCustomer;
    }
    public boolean isIsSupplier() {
        return this.isSupplier;
    }
    
    public void setIsSupplier(boolean isSupplier) {
        this.isSupplier = isSupplier;
    }
    public boolean isIsEmployee() {
        return this.isEmployee;
    }
    
    public void setIsEmployee(boolean isEmployee) {
        this.isEmployee = isEmployee;
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
    public Set getBusinessAddresses() {
        return this.businessAddresses;
    }
    
    public void setBusinessAddresses(Set businessAddresses) {
        this.businessAddresses = businessAddresses;
    }
    public Set getUsers() {
        return this.users;
    }
    
    public void setUsers(Set users) {
        this.users = users;
    }
    public Set getBusinessTelephones() {
        return this.businessTelephones;
    }
    
    public void setBusinessTelephones(Set businessTelephones) {
        this.businessTelephones = businessTelephones;
    }
    public Set getGrns() {
        return this.grns;
    }
    
    public void setGrns(Set grns) {
        this.grns = grns;
    }
    public Set getSaleEmployees() {
        return this.saleEmployees;
    }
    
    public void setSaleEmployees(Set saleEmployees) {
        this.saleEmployees = saleEmployees;
    }
    public Set getAccounts() {
        return this.accounts;
    }
    
    public void setAccounts(Set accounts) {
        this.accounts = accounts;
    }
    public Set getAccountPostings() {
        return this.accountPostings;
    }
    
    public void setAccountPostings(Set accountPostings) {
        this.accountPostings = accountPostings;
    }
    public Set getVehicles() {
        return this.vehicles;
    }
    
    public void setVehicles(Set vehicles) {
        this.vehicles = vehicles;
    }




}


