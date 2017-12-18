/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servicemaster.accounts;

import com.servicemaster.forms.MainFrame;
import com.servicemaster.keys.KeyCodeFunctions;
import com.servicemaster.models.Account;
import com.servicemaster.models.BusinessPartner;
import com.servicemaster.models.SubAccount;
import com.servicemaster.utils.HibernateUtil;
import java.util.Date;
import org.apache.log4j.Logger;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author RuwanM
 */
public class CreateAccounts {

    final static Logger LOGGER = Logger.getLogger(CreateAccounts.class);

    public void createBusnessPartnerDrAccount(BusinessPartner businessPartner) {
        try {
            Session session = HibernateUtil.getSessionFactory().openSession();
            Transaction transaction = session.beginTransaction();

            Date date = new Date();

            Account account = (Account) session
                    .createCriteria(Account.class)
                    .createAlias("subAccount", "subAccount")
                    .add(Restrictions.eq("businessPartner", businessPartner))
                    .add(Restrictions.eq("subAccount.code", "SAC1002"))
                    .uniqueResult();

            if (account == null) {
                KeyCodeFunctions codeFunctions = new KeyCodeFunctions();
                String accountCode = codeFunctions.getKey("ACC", "Account codes");

                SubAccount subAccount = (SubAccount) session
                        .createCriteria(SubAccount.class)
                        .add(Restrictions.eq("code", "SAC1002"))
                        .uniqueResult();

                account = new Account();
                account.setAccountCode(accountCode);
                account.setDescription(businessPartner.getFirstName() + " " + businessPartner.getLastName());
                account.setBusinessPartner(businessPartner);
                account.setIsActive(1);
                account.setRemark(("Debit account for " + businessPartner.getFirstName() + " " + businessPartner.getLastName()).toUpperCase());
                account.setSubAccount(subAccount);
                account.setCreatedDate(date);
                account.setCreatedTime(date);
                account.setCreatedUser(MainFrame.user.getUserId());

                session.saveOrUpdate(account);

                transaction.commit();
            }

            session.close();
        } catch (HibernateException ex) {
            LOGGER.error(ex);
        }
    }

    public void createBusnessPartnerCrAccount(BusinessPartner businessPartner) {
        try {
            Session session = HibernateUtil.getSessionFactory().openSession();
            Transaction transaction = session.beginTransaction();

            Date date = new Date();

            Account account = (Account) session
                    .createCriteria(Account.class)
                    .createAlias("subAccount", "subAccount")
                    .add(Restrictions.eq("businessPartner", businessPartner))
                    .add(Restrictions.eq("subAccount.code", "SAC1003"))
                    .uniqueResult();

            if (account == null) {
                KeyCodeFunctions codeFunctions = new KeyCodeFunctions();
                String accountCode = codeFunctions.getKey("ACC", "Account codes");

                SubAccount subAccount = (SubAccount) session
                        .createCriteria(SubAccount.class)
                        .add(Restrictions.eq("code", "SAC1003"))
                        .uniqueResult();

                account = new Account();
                account.setAccountCode(accountCode);
                account.setDescription(businessPartner.getFirstName() + " " + businessPartner.getLastName());
                account.setBusinessPartner(businessPartner);
                account.setIsActive(1);
                account.setRemark(("Credit account for " + businessPartner.getFirstName() + " " + businessPartner.getLastName()).toUpperCase());
                account.setSubAccount(subAccount);
                account.setCreatedDate(date);
                account.setCreatedTime(date);
                account.setCreatedUser(MainFrame.user.getUserId());

                session.saveOrUpdate(account);

                transaction.commit();
            }

            session.close();
        } catch (HibernateException ex) {
            LOGGER.error(ex);
        }
    }
}
