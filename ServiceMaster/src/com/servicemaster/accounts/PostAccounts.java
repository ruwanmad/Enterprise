/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.servicemaster.accounts;

import com.servicemaster.forms.MainFrame;
import com.servicemaster.models.Account;
import com.servicemaster.models.AccountPosting;
import com.servicemaster.models.Grn;
import com.servicemaster.models.Invoice;
import com.servicemaster.models.Sale;
import com.servicemaster.utils.HibernateUtil;
import java.util.Date;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author RuwanM
 */
public class PostAccounts {
    public void saleDebitPosting(Account debitAccount, Invoice invoice, String narration){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        
        Date date = new Date();
        
        Sale sale = (Sale) session.load(Sale.class, invoice.getSale().getSaleCode());
        
        AccountPosting posting = new AccountPosting();
        posting.setAccount(debitAccount);
        posting.setDebit(sale.getGrandTotal());
        posting.setInvoice(invoice);
        posting.setCreatedDate(date);
        posting.setCreatedTime(date);
        posting.setCreatedUser(MainFrame.user.getUserId());
        posting.setNarration(narration);
        posting.setPostedDate(date);
        
        session.saveOrUpdate(posting);
        
        transaction.commit();
        session.close();
    }
    
    public void salesCreditPosting(Account creditAccount, Invoice invoice, String narration){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        
        Date date = new Date();
        
        Sale sale = (Sale) session.load(Sale.class, invoice.getSale().getSaleCode());
        
        AccountPosting posting = new AccountPosting();
        posting.setAccount(creditAccount);
        posting.setCredit(sale.getGrandTotal());
        posting.setInvoice(invoice);
        posting.setCreatedDate(date);
        posting.setCreatedTime(date);
        posting.setCreatedUser(MainFrame.user.getUserId());
        posting.setNarration(narration);
        posting.setPostedDate(date);
        
        session.saveOrUpdate(posting);
        
        transaction.commit();
        session.close();
    }
    
    public void purchaseDebitPosting(Account debitAccount, Grn grn, String narration){
        
    }
    
    public void purchaseCreditPosting(Account creditAccount, Grn grn, String narration){
        
    }
}