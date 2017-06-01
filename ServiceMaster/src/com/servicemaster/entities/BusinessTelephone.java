package com.servicemaster.entities;
// Generated May 31, 2017 4:52:36 PM by Hibernate Tools 4.3.1



/**
 * BusinessTelephone generated by hbm2java
 */
public class BusinessTelephone  implements java.io.Serializable {


     private int businessTelephoneId;
     private BusinessPartner businessPartner;
     private TelephoneNumber telephoneNumber;

    public BusinessTelephone() {
    }

    public BusinessTelephone(int businessTelephoneId, BusinessPartner businessPartner, TelephoneNumber telephoneNumber) {
       this.businessTelephoneId = businessTelephoneId;
       this.businessPartner = businessPartner;
       this.telephoneNumber = telephoneNumber;
    }
   
    public int getBusinessTelephoneId() {
        return this.businessTelephoneId;
    }
    
    public void setBusinessTelephoneId(int businessTelephoneId) {
        this.businessTelephoneId = businessTelephoneId;
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


