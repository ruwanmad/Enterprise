/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servicemaster.main;

import com.servicemaster.configs.Configs;
import com.servicemaster.dialogs.InformationDialog;
import com.servicemaster.splash.SplashForm;
import java.awt.Color;
import java.awt.Font;
import javax.swing.UIManager;
import org.apache.log4j.Logger;

/**
 *
 * @author Ruwan Madawala
 */
public class Main {

    final static Logger LOGGER = Logger.getLogger(Main.class);

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        try {
            Font miFont = new Font("Segoe UI", Font.PLAIN, 16);
            UIManager.put("MenuItem.font", miFont);

            Font mFont = new Font("Segoe UI", Font.PLAIN, 16);
            UIManager.put("Menu.font", mFont);

            UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());
        } catch (ClassNotFoundException | InstantiationException | IllegalAccessException | javax.swing.UnsupportedLookAndFeelException ex) {
            LOGGER.error(ex);
        }

        boolean readed = Configs.readConfigs();

        if (readed) {
            SplashForm splashForm = new SplashForm(null, false);
            splashForm.setVisible(true);
        } else {
            InformationDialog.showMessageBox("Something wrong with the configurations. Please check.", "COnfiguration issue", null);
            LOGGER.info("Something wrong with the configurations. Please check.");
        }
    }
}
