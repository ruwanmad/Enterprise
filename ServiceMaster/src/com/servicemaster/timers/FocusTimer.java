/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.servicemaster.timers;

import com.servicemaster.internalFrames.ServiceFrame;
import java.util.TimerTask;

/**
 *
 * @author RuwanM
 */
public class FocusTimer extends TimerTask{

    @Override
    public void run() {
        ServiceFrame.cmbItems.requestFocus();
    }

}