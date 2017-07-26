package com.servicemaster.models;
// Generated Jul 26, 2017 11:33:46 PM by Hibernate Tools 3.6.0



/**
 * BusinessTelephone generated by hbm2java
 */
public class BusinessTelephone  implements java.io.Serializable {


     private BusinessTelephoneId id;
     private TelephoneNumber telephoneNumber;
     private BusinessPartner businessPartner;

    public BusinessTelephone() {
    }

    public BusinessTelephone(BusinessTelephoneId id, TelephoneNumber telephoneNumber, BusinessPartner businessPartner) {
       this.id = id;
       this.telephoneNumber = telephoneNumber;
       this.businessPartner = businessPartner;
    }
   
    public BusinessTelephoneId getId() {
        return this.id;
    }
    
    public void setId(BusinessTelephoneId id) {
        this.id = id;
    }
    public TelephoneNumber getTelephoneNumber() {
        return this.telephoneNumber;
    }
    
    public void setTelephoneNumber(TelephoneNumber telephoneNumber) {
        this.telephoneNumber = telephoneNumber;
    }
    public BusinessPartner getBusinessPartner() {
        return this.businessPartner;
    }
    
    public void setBusinessPartner(BusinessPartner businessPartner) {
        this.businessPartner = businessPartner;
    }




}


