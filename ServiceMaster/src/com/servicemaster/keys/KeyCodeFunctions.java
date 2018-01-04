/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servicemaster.keys;

import com.servicemaster.frames.MainFrame;
import com.servicemaster.models.KeyTable;
import com.servicemaster.utils.HibernateUtil;
import java.util.Date;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author RuwanM
 */
public class KeyCodeFunctions {

    public String getKey(String code, String remark) {
        String keyCode;

        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();

        KeyTable key = (KeyTable) session
                .createCriteria(KeyTable.class)
                .add(Restrictions.eq("keyCode", code))
                .uniqueResult();

        if (key == null) {
            key = new KeyTable();
            key.setKeyCode(code);
            if ("ACC".equalsIgnoreCase(code)) {
                key.setKeyNumber(1012);
            } else {
                key.setKeyNumber(1002);
            }
            key.setKeyRemark(remark);
            key.setCreatedDate(new Date());
            key.setCreatedTime(new Date());
            key.setCreatedUser(MainFrame.user.getUserId());
            session.saveOrUpdate(key);
            if ("ACC".equalsIgnoreCase(code)) {
                keyCode = code + "1011";
            } else {
                keyCode = code + "1001";
            }
        } else {
            Integer keyNumber = key.getKeyNumber();
            key.setKeyNumber(keyNumber + 1);
            key.setModifiedDate(new Date());
            key.setModifiedTime(new Date());
            key.setModifiedUser(MainFrame.user.getUserId());
            session.saveOrUpdate(key);
            keyCode = code + keyNumber;
        }

        session.getTransaction().commit();
        session.close();

        return keyCode;
    }
}
