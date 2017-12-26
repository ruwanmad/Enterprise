/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.servicemaster.listners;

import com.servicemaster.data.SystemData;
import com.servicemaster.supportClasses.ButtonFunctions;
import java.awt.event.FocusEvent;
import java.awt.event.FocusListener;
import javax.swing.JButton;

/**
 *
 * @author RuwanM
 */
public class PaymentButtonFocusListner implements FocusListener{

    @Override
    public void focusGained(FocusEvent evt) {
//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void focusLost(FocusEvent evt) {
        Object source = evt.getSource();
        if (source instanceof JButton) {
            JButton button = (JButton) source;
            ButtonFunctions.changeBackgroundColor(button, SystemData.MOUSE_EXIT_COLOR);
        }
    }
}