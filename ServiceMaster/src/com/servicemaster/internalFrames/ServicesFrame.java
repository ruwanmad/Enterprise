/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servicemaster.internalFrames;

import com.servicemaster.data.SystemData;
import com.servicemaster.dialogs.ConfirmationDialog;
import com.servicemaster.guiFunctions.LableFunctions;
import java.awt.Color;
import java.beans.PropertyVetoException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.plaf.basic.BasicInternalFrameUI;

/**
 *
 * @author RuwanM
 */
public class ServicesFrame extends javax.swing.JInternalFrame {

    /**
     * Creates new form SeviceFrame
     */
    public ServicesFrame() {
        initComponents();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        toolbar = new javax.swing.JToolBar();
        toolbarPanel = new javax.swing.JPanel();
        lblNewService = new javax.swing.JLabel();
        jSplitPane1 = new javax.swing.JSplitPane();
        jScrollPane1 = new javax.swing.JScrollPane();
        listServices = new javax.swing.JList<>();
        desktopPane = new javax.swing.JDesktopPane();

        setClosable(true);
        setIconifiable(true);
        setTitle("Services");

        toolbar.setFloatable(false);
        toolbar.setRollover(true);

        toolbarPanel.setOpaque(false);

        lblNewService.setBackground(new java.awt.Color(150, 255, 150));
        lblNewService.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        lblNewService.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        lblNewService.setText("New Service");
        lblNewService.setBorder(javax.swing.BorderFactory.createMatteBorder(1, 1, 1, 1, new java.awt.Color(50, 255, 50)));
        lblNewService.setMaximumSize(new java.awt.Dimension(90, 35));
        lblNewService.setMinimumSize(new java.awt.Dimension(90, 35));
        lblNewService.setOpaque(true);
        lblNewService.setPreferredSize(new java.awt.Dimension(90, 35));
        lblNewService.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                lblNewServiceMouseClicked(evt);
            }
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                lblNewServiceMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                lblNewServiceMouseExited(evt);
            }
        });

        javax.swing.GroupLayout toolbarPanelLayout = new javax.swing.GroupLayout(toolbarPanel);
        toolbarPanel.setLayout(toolbarPanelLayout);
        toolbarPanelLayout.setHorizontalGroup(
            toolbarPanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(toolbarPanelLayout.createSequentialGroup()
                .addGap(5, 5, 5)
                .addComponent(lblNewService, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(687, Short.MAX_VALUE))
        );
        toolbarPanelLayout.setVerticalGroup(
            toolbarPanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, toolbarPanelLayout.createSequentialGroup()
                .addGap(0, 0, Short.MAX_VALUE)
                .addComponent(lblNewService, javax.swing.GroupLayout.PREFERRED_SIZE, 33, javax.swing.GroupLayout.PREFERRED_SIZE))
        );

        toolbar.add(toolbarPanel);

        jSplitPane1.setDividerLocation(150);

        listServices.setModel(new javax.swing.AbstractListModel<String>() {
            String[] strings = { "No Current Services" };
            public int getSize() { return strings.length; }
            public String getElementAt(int i) { return strings[i]; }
        });
        jScrollPane1.setViewportView(listServices);

        jSplitPane1.setLeftComponent(jScrollPane1);

        desktopPane.setBackground(new java.awt.Color(255, 255, 255));

        javax.swing.GroupLayout desktopPaneLayout = new javax.swing.GroupLayout(desktopPane);
        desktopPane.setLayout(desktopPaneLayout);
        desktopPaneLayout.setHorizontalGroup(
            desktopPaneLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 628, Short.MAX_VALUE)
        );
        desktopPaneLayout.setVerticalGroup(
            desktopPaneLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 440, Short.MAX_VALUE)
        );

        jSplitPane1.setRightComponent(desktopPane);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(toolbar, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .addComponent(jSplitPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(toolbar, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(2, 2, 2)
                .addComponent(jSplitPane1))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void lblNewServiceMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lblNewServiceMouseEntered
        LableFunctions.changeBackgroundColor(evt.getSource(), SystemData.MOUSE_ENTER_COLOR);
    }//GEN-LAST:event_lblNewServiceMouseEntered

    private void lblNewServiceMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lblNewServiceMouseExited
        LableFunctions.changeBackgroundColor(evt.getSource(), SystemData.MOUSE_EXIT_COLOR);
    }//GEN-LAST:event_lblNewServiceMouseExited

    private void lblNewServiceMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lblNewServiceMouseClicked
        try {
            ServiceFrame serviceFrame = new ServiceFrame();
            desktopPane.add(serviceFrame);
            serviceFrame.setMaximum(true);
            
            BasicInternalFrameUI internalFrameUI = (BasicInternalFrameUI) serviceFrame.getUI();
            internalFrameUI.setNorthPane(null);
            serviceFrame.setBorder(null);
            
            serviceFrame.setVisible(true);
        } catch (PropertyVetoException ex) {
            Logger.getLogger(ServicesFrame.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }//GEN-LAST:event_lblNewServiceMouseClicked


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JDesktopPane desktopPane;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JSplitPane jSplitPane1;
    private javax.swing.JLabel lblNewService;
    private javax.swing.JList<String> listServices;
    private javax.swing.JToolBar toolbar;
    private javax.swing.JPanel toolbarPanel;
    // End of variables declaration//GEN-END:variables
}