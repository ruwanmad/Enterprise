package com.servicemaster.models;
// Generated Oct 1, 2017 7:12:27 PM by Hibernate Tools 4.3.1



/**
 * BusinessTelephone generated by hbm2java
 */
public class BusinessTelephone  implements java.io.Serializable {


     private BusinessTelephoneId id;
     private BusinessPartner businessPartner;
     private TelephoneNumber telephoneNumber;

    public BusinessTelephone() {
    }

    public BusinessTelephone(BusinessTelephoneId id, BusinessPartner businessPartner, TelephoneNumber telephoneNumber) {
       this.id = id;
       this.businessPartner = businessPartner;
       this.telephoneNumber = telephoneNumber;
    }
   
    public BusinessTelephoneId getId() {
        return this.id;
    }
    
    public void setId(BusinessTelephoneId id) {
        this.id = id;
    }
    public BusinessPartner getBusinessPartner() {
        return this.businessPartner;
    }
    
    public void setBusinessPartner(BusinessPartner businessPartner) {
        this.businessPartner = businessPartner;
    }
    public TelephoneNumber getTelephoneNumber() {
        return this.telephoneNumber;
    }
    
    public void setTelephoneNumber(TelephoneNumber telephoneNumber) {
        this.telephoneNumber = telephoneNumber;
    }




}


