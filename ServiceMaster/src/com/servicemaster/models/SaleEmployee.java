package com.servicemaster.models;
// Generated Dec 4, 2017 10:06:33 PM by Hibernate Tools 4.3.1



/**
 * SaleEmployee generated by hbm2java
 */
public class SaleEmployee  implements java.io.Serializable {


     private Integer id;
     private BusinessPartner businessPartner;
     private Sale sale;

    public SaleEmployee() {
    }

    public SaleEmployee(BusinessPartner businessPartner, Sale sale) {
       this.businessPartner = businessPartner;
       this.sale = sale;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public BusinessPartner getBusinessPartner() {
        return this.businessPartner;
    }
    
    public void setBusinessPartner(BusinessPartner businessPartner) {
        this.businessPartner = businessPartner;
    }
    public Sale getSale() {
        return this.sale;
    }
    
    public void setSale(Sale sale) {
        this.sale = sale;
    }




}


