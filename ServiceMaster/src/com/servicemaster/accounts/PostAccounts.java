/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servicemaster.accounts;

import com.servicemaster.data.SystemData;
import com.servicemaster.frames.MainFrame;
import com.servicemaster.models.Account;
import com.servicemaster.models.AccountPosting;
import com.servicemaster.models.BusinessPartner;
import com.servicemaster.models.Grn;
import com.servicemaster.models.Invoice;
import com.servicemaster.models.Sale;
import com.servicemaster.utils.HibernateUtil;
import java.util.Date;
import org.apache.log4j.Logger;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author RuwanM
 */
public class PostAccounts {

    final static Logger LOGGER = Logger.getLogger(PostAccounts.class);

    public void cashDebitPosting(Account debitAccount,
            Invoice invoice,
            String narration,
            float amount) {
        try {
            if (debitAccount != null) {
                Session session = HibernateUtil.getSessionFactory().openSession();
                Transaction transaction = session.beginTransaction();

                Date date = new Date();

                AccountPosting posting = new AccountPosting();
                posting.setAccount(debitAccount);
                posting.setDebit(amount);
                posting.setInvoice(invoice);
                posting.setIsActive(1);
                posting.setCreatedDate(date);
                posting.setCreatedTime(date);
                posting.setCreatedUser(MainFrame.user.getUserId());
                posting.setNarration(narration);
                posting.setPostedDate(date);

                session.saveOrUpdate(posting);

                transaction.commit();
                session.close();
            }
        } catch (HibernateException ex) {
            LOGGER.error(ex);
        }
    }

    public void chequeDebitPosting(Account debitAccount,
            BusinessPartner businessPartner,
            Invoice invoice,
            float amount,
            Date chequeDate,
            int creditDays,
            String chequeNumber,
            String narration) {
        try {
            if (debitAccount != null) {
                Session session = HibernateUtil.getSessionFactory().openSession();
                Transaction transaction = session.beginTransaction();

                Date date = new Date();

                Sale sale;
                if (invoice != null) {
                    sale = (Sale) session.load(Sale.class, invoice.getSale().getSaleCode());
                } else {
                    sale = null;
                }

                AccountPosting posting = new AccountPosting();
                posting.setAccount(debitAccount);
                if (sale != null) {
                    posting.setDebit(sale.getGrandTotal());
                } else {
                    posting.setDebit(amount);
                }
                posting.setBusinessPartner(businessPartner);
                posting.setChequeDate(chequeDate);
                posting.setNumberOfDays(creditDays);
                posting.setChequeNumber(chequeNumber);
                posting.setInvoice(invoice);
                posting.setIsActive(1);
                posting.setCreatedDate(date);
                posting.setCreatedTime(date);
                posting.setCreatedUser(MainFrame.user.getUserId());
                posting.setNarration(narration);
                posting.setPostedDate(date);

                session.saveOrUpdate(posting);

                transaction.commit();
                session.close();
            }
        } catch (HibernateException ex) {
            LOGGER.error(ex);
        }
    }

    public void creditDebitPosting(Account debitAccount,
            BusinessPartner businessPartner,
            float amount,
            Invoice invoice,
            int cretidDays,
            String narration) {
        try {
            if (debitAccount != null) {
                Session session = HibernateUtil.getSessionFactory().openSession();
                Transaction transaction = session.beginTransaction();

                Date date = new Date();

                AccountPosting posting = new AccountPosting();
                posting.setAccount(debitAccount);
                posting.setDebit(amount);
                posting.setBusinessPartner(businessPartner);
                posting.setNumberOfDays(cretidDays);
                posting.setInvoice(invoice);
                posting.setIsActive(1);
                posting.setCreatedDate(date);
                posting.setCreatedTime(date);
                posting.setCreatedUser(MainFrame.user.getUserId());
                posting.setNarration(narration);
                posting.setPostedDate(date);

                session.saveOrUpdate(posting);

                transaction.commit();
                session.close();
            }
        } catch (HibernateException ex) {
            LOGGER.error(ex);
        }
    }

    public void creditCardDebitPosting(Account debitAccount,
            Invoice invoice,
            String cardNumber,
            Date expireDate,
            String bank,
            String cardType,
            String narration) {
        try {
            if (debitAccount != null) {
                Session session = HibernateUtil.getSessionFactory().openSession();
                Transaction transaction = session.beginTransaction();

                Date date = new Date();

                Sale sale = (Sale) session.load(Sale.class, invoice.getSale().getSaleCode());

                AccountPosting posting = new AccountPosting();
                posting.setAccount(debitAccount);
                posting.setDebit(sale.getGrandTotal());
                posting.setRemark(bank + ";" + cardType + ";" + cardNumber + ";" + SystemData.DATE_FORMAT.format(expireDate));
                posting.setInvoice(invoice);
                posting.setIsActive(1);
                posting.setCreatedDate(date);
                posting.setCreatedTime(date);
                posting.setCreatedUser(MainFrame.user.getUserId());
                posting.setNarration(narration);
                posting.setPostedDate(date);

                session.saveOrUpdate(posting);

                transaction.commit();
                session.close();
            }
        } catch (HibernateException ex) {
            LOGGER.error(ex);
        }
    }

    public void generalDebitPosting(Account creditAccount,
            BusinessPartner businessPartner,
            float amount,
            String narration) {
        try {
            if (creditAccount != null) {
                Session session = HibernateUtil.getSessionFactory().openSession();
                Transaction transaction = session.beginTransaction();

                Date date = new Date();

                AccountPosting posting = new AccountPosting();
                posting.setAccount(creditAccount);
                posting.setDebit(amount);
                posting.setBusinessPartner(businessPartner);
                posting.setIsActive(1);
                posting.setCreatedDate(date);
                posting.setCreatedTime(date);
                posting.setCreatedUser(MainFrame.user.getUserId());
                posting.setNarration(narration);
                posting.setPostedDate(date);

                session.saveOrUpdate(posting);

                transaction.commit();
                session.close();
            }
        } catch (HibernateException ex) {
            LOGGER.error(ex);
        }
    }

    public void cashCreditPosting(Account creditAccount,
            Invoice invoice,
            String narration,
            float amount) {
        try {
            if (creditAccount != null) {
                Session session = HibernateUtil.getSessionFactory().openSession();
                Transaction transaction = session.beginTransaction();

                Date date = new Date();

                AccountPosting posting = new AccountPosting();
                posting.setAccount(creditAccount);
                posting.setCredit(amount);
                posting.setInvoice(invoice);
                posting.setIsActive(1);
                posting.setCreatedDate(date);
                posting.setCreatedTime(date);
                posting.setCreatedUser(MainFrame.user.getUserId());
                posting.setNarration(narration);
                posting.setPostedDate(date);

                session.saveOrUpdate(posting);

                transaction.commit();
                session.close();
            }
        } catch (HibernateException ex) {
            LOGGER.error(ex);
        }
    }

    public void chequeCreditPosting(Account creditAccount,
            BusinessPartner businessPartner,
            Invoice invoice,
            float amount,
            Date chequeDate,
            int creditDays,
            String chequeNumber,
            String narration) {
        try {
            if (creditAccount != null) {
                Session session = HibernateUtil.getSessionFactory().openSession();
                Transaction transaction = session.beginTransaction();

                Date date = new Date();

                Sale sale;
                if (invoice != null) {
                    sale = (Sale) session.load(Sale.class, invoice.getSale().getSaleCode());
                } else {
                    sale = null;
                }

                AccountPosting posting = new AccountPosting();
                posting.setAccount(creditAccount);
                if (sale != null) {
                    posting.setCredit(sale.getGrandTotal());
                } else {
                    posting.setCredit(amount);
                }
                posting.setBusinessPartner(businessPartner);
                posting.setChequeDate(chequeDate);
                posting.setNumberOfDays(creditDays);
                posting.setChequeNumber(chequeNumber);
                posting.setInvoice(invoice);
                posting.setIsActive(1);
                posting.setCreatedDate(date);
                posting.setCreatedTime(date);
                posting.setCreatedUser(MainFrame.user.getUserId());
                posting.setNarration(narration);
                posting.setPostedDate(date);

                session.saveOrUpdate(posting);

                transaction.commit();
                session.close();
            }
        } catch (HibernateException ex) {
            LOGGER.error(ex);
        }
    }

    public void creditCreditPosting(Account creditAccount,
            BusinessPartner businessPartner,
            float amount,
            Invoice invoice,
            int cretidDays,
            String narration) {
        try {
            if (creditAccount != null) {
                Session session = HibernateUtil.getSessionFactory().openSession();
                Transaction transaction = session.beginTransaction();

                Date date = new Date();

                AccountPosting posting = new AccountPosting();
                posting.setAccount(creditAccount);
                posting.setCredit(amount);
                posting.setBusinessPartner(businessPartner);
                posting.setNumberOfDays(cretidDays);
                posting.setInvoice(invoice);
                posting.setIsActive(1);
                posting.setCreatedDate(date);
                posting.setCreatedTime(date);
                posting.setCreatedUser(MainFrame.user.getUserId());
                posting.setNarration(narration);
                posting.setPostedDate(date);

                session.saveOrUpdate(posting);

                transaction.commit();
                session.close();
            }
        } catch (HibernateException ex) {
            LOGGER.error(ex);
        }
    }

    public void creditCardCreditPosting(Account creditAccount,
            Invoice invoice,
            String cardNumber,
            Date expireDate,
            String bank,
            String cardType,
            String narration) {
        try {
            if (creditAccount != null) {
                Session session = HibernateUtil.getSessionFactory().openSession();
                Transaction transaction = session.beginTransaction();

                Date date = new Date();

                Sale sale = (Sale) session.load(Sale.class, invoice.getSale().getSaleCode());

                AccountPosting posting = new AccountPosting();
                posting.setAccount(creditAccount);
                posting.setCredit(sale.getGrandTotal());
                posting.setRemark(bank + ";" + cardType + ";" + cardNumber + ";" + SystemData.DATE_FORMAT.format(expireDate));
                posting.setInvoice(invoice);
                posting.setIsActive(1);
                posting.setCreatedDate(date);
                posting.setCreatedTime(date);
                posting.setCreatedUser(MainFrame.user.getUserId());
                posting.setNarration(narration);
                posting.setPostedDate(date);

                session.saveOrUpdate(posting);

                transaction.commit();
                session.close();
            }
        } catch (HibernateException ex) {
            LOGGER.error(ex);
        }
    }

    public void generalCreditPosting(Account creditAccount,
            BusinessPartner businessPartner,
            float amount,
            String narration) {
        try {
            if (creditAccount != null) {
                Session session = HibernateUtil.getSessionFactory().openSession();
                Transaction transaction = session.beginTransaction();

                Date date = new Date();

                AccountPosting posting = new AccountPosting();
                posting.setAccount(creditAccount);
                posting.setCredit(amount);
                posting.setBusinessPartner(businessPartner);
                posting.setIsActive(1);
                posting.setCreatedDate(date);
                posting.setCreatedTime(date);
                posting.setCreatedUser(MainFrame.user.getUserId());
                posting.setNarration(narration);
                posting.setPostedDate(date);

                session.saveOrUpdate(posting);

                transaction.commit();
                session.close();
            }
        } catch (HibernateException ex) {
            LOGGER.error(ex);
        }
    }

    public void doAccountPosting(String narration,
            float debit,
            float credit,
            int numberofDays,
            String chequeNumber,
            Date chequeDate,
            Date postedDate,
            String remark,
            Invoice invoice,
            Grn grn,
            BusinessPartner businessPartner,
            Account account) {
        try {
            Session session = HibernateUtil.getSessionFactory().openSession();
            Transaction transaction = session.beginTransaction();
            
            Date date = new Date();
            
            AccountPosting accountPosting = new AccountPosting();
            accountPosting.setNarration(narration);
            accountPosting.setDebit(debit);
            accountPosting.setCredit(credit);
            accountPosting.setNumberOfDays(numberofDays);
            accountPosting.setChequeNumber(chequeNumber);
            accountPosting.setChequeDate(chequeDate);
            accountPosting.setPostedDate(postedDate);
            accountPosting. setRemark(remark);
            accountPosting.setInvoice(invoice);
            accountPosting.setGrn(grn);
            accountPosting.setBusinessPartner(businessPartner);
            accountPosting.setAccount(account);
            
            accountPosting.setIsActive(1);
            accountPosting.setCreatedDate(date);
            accountPosting.setCreatedTime(date);
            accountPosting.setCreatedUser(MainFrame.user.getUserId());
            
            session.saveOrUpdate(accountPosting);
            
            transaction.commit();
            session.close();
        } catch (HibernateException | NullPointerException ex) {
            LOGGER.error(ex);
        }
    }

    public void purchaseDebitPosting(Account debitAccount, Grn grn, String narration) {
        try {

        } catch (HibernateException ex) {
            LOGGER.error(ex);
        }
    }

    public void purchaseCreditPosting(Account creditAccount, Grn grn, String narration) {
        try {

        } catch (HibernateException ex) {
            LOGGER.error(ex);
        }
    }
}
