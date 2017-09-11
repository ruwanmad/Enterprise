/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servicemaster.functions;

import com.servicemaster.models.Bom;
import com.servicemaster.models.BomItem;
import com.servicemaster.models.Item;
import com.servicemaster.models.Service;
import com.servicemaster.models.ServiceHasItem;
import com.servicemaster.models.Stock;
import com.servicemaster.models.Uom;
import com.servicemaster.models.UomConversion;
import com.servicemaster.utils.HibernateUtil;
import java.util.List;
import java.util.Set;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author RuwanM
 */
public class StockFunctions {

    public void reduceSaledStoke(String serviceCode) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();

        Service service = (Service) session
                .createCriteria(Service.class)
                .add(Restrictions.eq("serviceCode", serviceCode))
                .uniqueResult();

        if (service != null) {
            List<ServiceHasItem> serviceHasItems = session
                    .createCriteria(ServiceHasItem.class)
                    .add(Restrictions.eq("service", service))
                    .list();

            if (!serviceHasItems.isEmpty()) {
                for (ServiceHasItem serviceHasItem : serviceHasItems) {
                    Item item = (Item) session.load(Item.class, serviceHasItem.getItem().getItemCode());
                    if (item != null) {
                        Set<Bom> boms = item.getBoms();

                        /**
                         * If item does not have a BOM
                         */
                        if (boms.isEmpty()) {
                            if (item.getIsPhysical() == 1) {
                                Item baseItem = (Item) session.load(Item.class, item.getItem().getItemCode());

                                /**
                                 * If item does not have a base item
                                 */
                                if (baseItem == null) {
                                    float serviceQuantity = serviceHasItem.getQuantity();
                                    float itemQuantity = item.getItemQuantity();

                                    float soldQuantity = serviceQuantity * itemQuantity;

                                    List<Stock> stocks = session
                                            .createCriteria(Stock.class)
                                            .add(Restrictions.eq("item", item))
                                            .add(Restrictions.ne("quantity", 0.0f))
                                            .addOrder(Order.asc("createdDate"))
                                            .list();
                                    if (!stocks.isEmpty()) {
                                        float remainingQuantity = soldQuantity;
                                        for (Stock stock : stocks) {
                                            if (remainingQuantity > 0) {
                                                float stockQuantity = stock.getQuantity();
                                                if (stockQuantity >= remainingQuantity) {
                                                    stock.setQuantity(stockQuantity - remainingQuantity);
                                                    session.saveOrUpdate(stock);
                                                    break;
                                                } else {
                                                    stock.setQuantity(0.0f);
                                                    remainingQuantity -= stockQuantity;
                                                    session.saveOrUpdate(stock);
                                                }
                                            }
                                        }
                                    }
                                } /**
                                 * If item has a base item
                                 */
                                else {
                                    Uom itemSellingUom = (Uom) session.load(Uom.class, item.getUomBySellingUom().getUomCode());
                                    Uom baseItemSellingUom = (Uom) session.load(Uom.class, baseItem.getUomBySellingUom().getUomCode());

                                    /**
                                     * If item selling UOM and base item selling
                                     * UOM equals
                                     */
                                    if (itemSellingUom == baseItemSellingUom) {
                                        float soldQuantity = item.getItemQuantity() * serviceHasItem.getQuantity();

                                        List<Stock> stocks = session
                                                .createCriteria(Stock.class)
                                                .add(Restrictions.eq("item", baseItem))
                                                .add(Restrictions.ne("quantity", 0.0f))
                                                .addOrder(Order.asc("createdDate"))
                                                .list();
                                        if (!stocks.isEmpty()) {
                                            float remainingQuantity = soldQuantity;
                                            for (Stock stock : stocks) {
                                                if (remainingQuantity > 0) {
                                                    float stockQuantity = stock.getQuantity();
                                                    if (stockQuantity >= remainingQuantity) {
                                                        stock.setQuantity(stockQuantity - remainingQuantity);
                                                        session.saveOrUpdate(stock);
                                                        break;
                                                    } else {
                                                        stock.setQuantity(0.0f);
                                                        remainingQuantity -= stockQuantity;
                                                        session.saveOrUpdate(stock);
                                                    }
                                                }
                                            }
                                        }
                                    } /**
                                     * If item selling UOM and base item selling
                                     * UOM not equals
                                     */
                                    else {
                                        UomConversion uomConversion = (UomConversion) session
                                                .createCriteria(UomConversion.class)
                                                .add(Restrictions.eq("uomByUomUomCodeFrom", itemSellingUom))
                                                .add(Restrictions.eq("uomByUomUomCodeTo", baseItemSellingUom))
                                                .uniqueResult();

                                        if (uomConversion != null) {
                                            float multipliedBy = uomConversion.getMultipliedBy();
                                            float itemQuantity = item.getItemQuantity();

                                            float soldQuantity = (itemQuantity * serviceHasItem.getQuantity()) * multipliedBy;

                                            List<Stock> stocks = session
                                                    .createCriteria(Stock.class)
                                                    .add(Restrictions.eq("item", baseItem))
                                                    .add(Restrictions.ne("quantity", 0.0f))
                                                    .addOrder(Order.asc("createdDate"))
                                                    .list();
                                            if (!stocks.isEmpty()) {
                                                float remainingQuantity = soldQuantity;
                                                for (Stock stock : stocks) {
                                                    if (remainingQuantity > 0) {
                                                        float stockQuantity = stock.getQuantity();
                                                        if (stockQuantity >= remainingQuantity) {
                                                            stock.setQuantity(stockQuantity - remainingQuantity);
                                                            session.saveOrUpdate(stock);
                                                            break;
                                                        } else {
                                                            stock.setQuantity(0.0f);
                                                            remainingQuantity -= stockQuantity;
                                                            session.saveOrUpdate(stock);
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        } /**
                         * If item has a BOM
                         */
                        else {
                            this.processBomItems(boms, serviceHasItem, session);
                        }
                    }
                }
            }
        }

        transaction.commit();
        session.close();
    }

    private void processBomItems(Set<Bom> parmBoms, ServiceHasItem serviceHasItem, Session session) {
        for (Bom bom : parmBoms) {
            List<BomItem> bomItems = session
                    .createCriteria(BomItem.class)
                    .add(Restrictions.eq("bom", bom))
                    .list();

            if (!bomItems.isEmpty()) {
                for (BomItem bomItem : bomItems) {
                    Item item = (Item) session.load(Item.class, bomItem.getItem().getItemCode());

                    if (item != null) {
                        Set<Bom> boms = item.getBoms();

                        /**
                         * If item does not have a BOM
                         */
                        if (boms.isEmpty()) {
                            if (item.getIsPhysical() == 1) {
                                Item baseItem = (Item) session.load(Item.class, item.getItem().getItemCode());

                                /**
                                 * If item does not have a base item
                                 */
                                if (baseItem == null) {
                                    float serviceQuantity = serviceHasItem.getQuantity();
                                    float itemQuantity = item.getItemQuantity();

                                    float soldQuantity = serviceQuantity * itemQuantity;

                                    List<Stock> stocks = session
                                            .createCriteria(Stock.class)
                                            .add(Restrictions.eq("item", item))
                                            .add(Restrictions.ne("quantity", 0.0f))
                                            .addOrder(Order.asc("createdDate"))
                                            .list();
                                    if (!stocks.isEmpty()) {
                                        float remainingQuantity = soldQuantity;
                                        for (Stock stock : stocks) {
                                            if (remainingQuantity > 0) {
                                                float stockQuantity = stock.getQuantity();
                                                if (stockQuantity >= remainingQuantity) {
                                                    stock.setQuantity(stockQuantity - remainingQuantity);
                                                    session.saveOrUpdate(stock);
                                                    break;
                                                } else {
                                                    stock.setQuantity(0.0f);
                                                    remainingQuantity -= stockQuantity;
                                                    session.saveOrUpdate(stock);
                                                }
                                            }
                                        }
                                    }
                                } /**
                                 * If item has a base item
                                 */
                                else {
                                    Uom itemSellingUom = (Uom) session.load(Uom.class, item.getUomBySellingUom().getUomCode());
                                    Uom baseItemSellingUom = (Uom) session.load(Uom.class, baseItem.getUomBySellingUom().getUomCode());

                                    /**
                                     * If item selling UOM and base item selling
                                     * UOM equals
                                     */
                                    if (itemSellingUom == baseItemSellingUom) {
                                        float soldQuantity = item.getItemQuantity() * serviceHasItem.getQuantity();

                                        List<Stock> stocks = session
                                                .createCriteria(Stock.class)
                                                .add(Restrictions.eq("item", baseItem))
                                                .add(Restrictions.ne("quantity", 0.0f))
                                                .addOrder(Order.asc("createdDate"))
                                                .list();
                                        if (!stocks.isEmpty()) {
                                            float remainingQuantity = soldQuantity;
                                            for (Stock stock : stocks) {
                                                if (remainingQuantity > 0) {
                                                    float stockQuantity = stock.getQuantity();
                                                    if (stockQuantity >= remainingQuantity) {
                                                        stock.setQuantity(stockQuantity - remainingQuantity);
                                                        session.saveOrUpdate(stock);
                                                        break;
                                                    } else {
                                                        stock.setQuantity(0.0f);
                                                        remainingQuantity -= stockQuantity;
                                                        session.saveOrUpdate(stock);
                                                    }
                                                }
                                            }
                                        }
                                    } /**
                                     * If item selling UOM and base item selling
                                     * UOM not equals
                                     */
                                    else {
                                        UomConversion uomConversion = (UomConversion) session
                                                .createCriteria(UomConversion.class)
                                                .add(Restrictions.eq("uomByUomUomCodeFrom", itemSellingUom))
                                                .add(Restrictions.eq("uomByUomUomCodeTo", baseItemSellingUom))
                                                .uniqueResult();

                                        if (uomConversion != null) {
                                            float multipliedBy = uomConversion.getMultipliedBy();
                                            float itemQuantity = item.getItemQuantity();

                                            float soldQuantity = (itemQuantity * serviceHasItem.getQuantity()) * multipliedBy;

                                            List<Stock> stocks = session
                                                    .createCriteria(Stock.class)
                                                    .add(Restrictions.eq("item", baseItem))
                                                    .add(Restrictions.ne("quantity", 0.0f))
                                                    .addOrder(Order.asc("createdDate"))
                                                    .list();
                                            if (!stocks.isEmpty()) {
                                                float remainingQuantity = soldQuantity;
                                                for (Stock stock : stocks) {
                                                    if (remainingQuantity > 0) {
                                                        float stockQuantity = stock.getQuantity();
                                                        if (stockQuantity >= remainingQuantity) {
                                                            stock.setQuantity(stockQuantity - remainingQuantity);
                                                            session.saveOrUpdate(stock);
                                                            break;
                                                        } else {
                                                            stock.setQuantity(0.0f);
                                                            remainingQuantity -= stockQuantity;
                                                            session.saveOrUpdate(stock);
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        } /**
                         * If item has a BOM
                         */
                        else {
                            this.processBomItems(boms, serviceHasItem, session);
                        }
                    }
                }
            }
        }
    }
}
