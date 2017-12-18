/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.servicemaster.configs;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;
import org.apache.log4j.Logger;

/**
 *
 * @author RuwanM
 */
public class Configs {
    
    final static Logger LOGGER = Logger.getLogger(Configs.class);
    
    /**
     * Database configurations
     */
    public static String database;
    public static String username;
    public static String password;
    /**
     * Bill configurations
     */
    public static int viewBill;
    public static int printBill;
    
    public static boolean readConfigs(){
        try {
            Properties properties = new Properties();
            properties.load(new FileInputStream("configs\\configs.properties"));
            
            database = properties.getProperty("database");
            username = properties.getProperty("username");
            password = properties.getProperty("password");
            
            if (password.equalsIgnoreCase("1")) {
                password = "senuja2014";
            } else if (password.equalsIgnoreCase("2")) {
                password = "z!ll!onhub";
            }
            
            viewBill = Integer.parseInt(properties.getProperty("viewBill"));
            printBill = Integer.parseInt(properties.getProperty("printBill"));
            
            return true;
        } catch (IOException ex) {
            LOGGER.error(ex);
            return false;
        }
    }
}