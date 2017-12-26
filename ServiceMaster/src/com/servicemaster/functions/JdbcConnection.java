/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servicemaster.functions;

import com.servicemaster.configs.Configs;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import org.apache.log4j.Logger;

/**
 *
 * @author RuwanM
 */
public class JdbcConnection {

    private static final Logger LOGGER = Logger.getLogger(JdbcConnection.class);
    private Connection connection;

    public Connection getConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            this.connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/" + Configs.database + "?"
                    + "zeroDateTimeBehavior=convertToNull",
                    Configs.username,
                    Configs.password);
        } catch (ClassNotFoundException | SQLException | NullPointerException ex) {
            LOGGER.error(ex);
        }

        return this.connection;
    }

    public void closeConnection() {
        try {
            if (this.connection != null && !this.connection.isClosed()) {
                this.connection.close();
            }
        } catch (SQLException | NullPointerException ex) {
            LOGGER.error(ex);
        }
    }
}
