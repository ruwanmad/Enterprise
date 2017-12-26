/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servicemaster.functions;

import com.servicemaster.models.Bom;
import com.servicemaster.models.BomItem;
import com.servicemaster.models.Item;
import com.servicemaster.models.Sale;
import com.servicemaster.models.SaleItem;
import com.servicemaster.models.Stock;
import com.servicemaster.models.Uom;
import com.servicemaster.models.UomConversion;
import com.servicemaster.utils.HibernateUtil;
import java.util.List;
import java.util.Set;
import org.apache.log4j.Logger;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author RuwanM
 */
public class StockFunctions {

    private static final Logger LOGGER = Logger.getLogger(StockFunctions.class);

    public void reduceSaledStoke(String saleCode) {
        try {
            Session session = HibernateUtil.getSessionFactory().openSession();
            Transaction transaction = session.beginTransaction();

            Sale sale = (Sale) session
                    .createCriteria(Sale.class)
                    .add(Restrictions.eq("saleCode", saleCode))
                    .uniqueResult();

            if (sale != null) {
                List<SaleItem> saleItems = session
                        .createCriteria(SaleItem.class)
                        .add(Restrictions.eq("sale", sale))
                        .list();

                if (!saleItems.isEmpty()) {
                    for (SaleItem saleItem : saleItems) {
                        Item item = (Item) session.load(Item.class, saleItem.getItem().getItemCode());
                        if (item != null) {
                            Set<Bom> boms = item.getBoms();

                            /**
                             * If item does not have a BOM
                             */
                            if (boms.isEmpty()) {
                                if (item.getIsPhysical() == 1) {
                                    /**
                                     * If item does not have a base item
                                     */
                                    if (item.getItem() == null) {
                                        float serviceQuantity = saleItem.getQuantity();
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
                                        Item baseItem = (Item) session.load(Item.class, item.getItem().getItemCode());

                                        Uom itemSellingUom = (Uom) session.load(Uom.class, item.getUomBySellingUom().getUomCode());
                                        Uom baseItemSellingUom = (Uom) session.load(Uom.class, baseItem.getUomBySellingUom().getUomCode());

                                        /**
                                         * If item selling UOM and base item
                                         * selling UOM equals
                                         */
                                        if (itemSellingUom == baseItemSellingUom) {
                                            float soldQuantity = item.getItemQuantity() * saleItem.getQuantity();

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
                                         * If item selling UOM and base item
                                         * selling UOM not equals
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

                                                float soldQuantity = (itemQuantity * saleItem.getQuantity()) * multipliedBy;

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
                                this.processBomItems(boms, saleItem, session);
                            }
                        }
                    }
                }
            }

            transaction.commit();
            session.close();
        } catch (HibernateException | NullPointerException ex) {
            LOGGER.error(ex);
        }
    }

    private void processBomItems(Set<Bom> parmBoms, SaleItem saleItem, Session session) {
        try {
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
                                    /**
                                     * If item does not have a base item
                                     */
                                    if (item.getItem() == null) {
                                        float serviceQuantity = saleItem.getQuantity();
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
                                        Item baseItem = (Item) session.load(Item.class, item.getItem().getItemCode());

                                        Uom itemSellingUom = (Uom) session.load(Uom.class, item.getUomBySellingUom().getUomCode());
                                        Uom baseItemSellingUom = (Uom) session.load(Uom.class, baseItem.getUomBySellingUom().getUomCode());

                                        /**
                                         * If item selling UOM and base item
                                         * selling UOM equals
                                         */
                                        if (itemSellingUom == baseItemSellingUom) {
                                            float soldQuantity = item.getItemQuantity() * saleItem.getQuantity();

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
                                         * If item selling UOM and base item
                                         * selling UOM not equals
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

                                                float soldQuantity = (itemQuantity * saleItem.getQuantity()) * multipliedBy;

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
                                this.processBomItems(boms, saleItem, session);
                            }
                        }
                    }
                }
            }
        } catch (HibernateException | NullPointerException ex) {
            LOGGER.error(ex);
        }
    }
}
