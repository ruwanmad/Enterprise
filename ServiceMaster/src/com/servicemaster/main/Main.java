/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servicemaster.main;


import com.servicemaster.forms.Login;
import com.servicemaster.utils.HibernateUtil;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.UIManager;
import org.hibernate.Session;

/**
 *
 * @author Ruwan Madawala
 */
public class Main {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        try {
            UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());
        } catch (ClassNotFoundException | InstantiationException | IllegalAccessException | javax.swing.UnsupportedLookAndFeelException ex) {
            Logger.getLogger(Main.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        session.getTransaction().commit();
        session.close();

        Login login = new Login();
        login.setVisible(true);
    }
}
