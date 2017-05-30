/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servicemaster.guiFunctions;

import java.awt.Color;
import javax.swing.JLabel;

/**
 *
 * @author RuwanM
 */
public class LableFunctions {

    public static void changeBackgroundColor(Object source, Color color) {
        if (source instanceof JLabel) {
            JLabel label = (JLabel) source;
            label.setBackground(color);
        }
    }
}
