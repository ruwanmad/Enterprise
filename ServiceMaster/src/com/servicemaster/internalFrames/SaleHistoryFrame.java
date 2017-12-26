/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servicemaster.internalFrames;

import com.servicemaster.data.SystemData;
import com.servicemaster.dialogs.InformationDialog;
import com.servicemaster.frames.MainFrame;
import com.servicemaster.supportClasses.AutoCompletion;
import com.servicemaster.supportClasses.ButtonFunctions;
import com.servicemaster.models.Sale;
import com.servicemaster.models.Vehicle;
import com.servicemaster.utils.HibernateUtil;
import com.servicemaster.views.DirectSaleHistoryView;
import com.servicemaster.views.ServiceHistoryView;
import java.beans.PropertyVetoException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.table.DefaultTableModel;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author RuwanM
 */
public class SaleHistoryFrame extends javax.swing.JInternalFrame {

    /**
     * Creates new form GrnFrame
     */
    public SaleHistoryFrame() {
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

        serviceHistoryPanel = new javax.swing.JPanel();
        scrollPane = new javax.swing.JScrollPane();
        tblServices = new javax.swing.JTable();
        btnOpen = new javax.swing.JButton();
        btnClose = new javax.swing.JButton();
        btnReset = new javax.swing.JButton();
        jLabel14 = new javax.swing.JLabel();
        cmbVehicleNo = new javax.swing.JComboBox<>();
        btnVehicleSerach = new javax.swing.JButton();

        setClosable(true);
        setIconifiable(true);
        setTitle("Sale History");
        addInternalFrameListener(new javax.swing.event.InternalFrameListener() {
            public void internalFrameActivated(javax.swing.event.InternalFrameEvent evt) {
            }
            public void internalFrameClosed(javax.swing.event.InternalFrameEvent evt) {
            }
            public void internalFrameClosing(javax.swing.event.InternalFrameEvent evt) {
            }
            public void internalFrameDeactivated(javax.swing.event.InternalFrameEvent evt) {
            }
            public void internalFrameDeiconified(javax.swing.event.InternalFrameEvent evt) {
            }
            public void internalFrameIconified(javax.swing.event.InternalFrameEvent evt) {
            }
            public void internalFrameOpened(javax.swing.event.InternalFrameEvent evt) {
                formInternalFrameOpened(evt);
            }
        });

        serviceHistoryPanel.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 153, 0)), "Service History", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Tahoma", 0, 11), new java.awt.Color(0, 153, 0))); // NOI18N

        tblServices.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "Service Code", "Service Date", "Milage", "Total Amount"
            }
        ) {
            Class[] types = new Class [] {
                java.lang.String.class, java.lang.String.class, java.lang.Float.class, java.lang.Float.class
            };
            boolean[] canEdit = new boolean [] {
                false, false, false, false
            };

            public Class getColumnClass(int columnIndex) {
                return types [columnIndex];
            }

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        tblServices.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                tblServicesMouseClicked(evt);
            }
        });
        scrollPane.setViewportView(tblServices);
        if (tblServices.getColumnModel().getColumnCount() > 0) {
            tblServices.getColumnModel().getColumn(0).setResizable(false);
            tblServices.getColumnModel().getColumn(1).setResizable(false);
            tblServices.getColumnModel().getColumn(2).setResizable(false);
            tblServices.getColumnModel().getColumn(3).setResizable(false);
        }

        javax.swing.GroupLayout serviceHistoryPanelLayout = new javax.swing.GroupLayout(serviceHistoryPanel);
        serviceHistoryPanel.setLayout(serviceHistoryPanelLayout);
        serviceHistoryPanelLayout.setHorizontalGroup(
            serviceHistoryPanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(scrollPane, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, 739, Short.MAX_VALUE)
        );
        serviceHistoryPanelLayout.setVerticalGroup(
            serviceHistoryPanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(scrollPane, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, 279, Short.MAX_VALUE)
        );

        btnOpen.setBackground(new java.awt.Color(150, 255, 150));
        btnOpen.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        btnOpen.setText("Open");
        btnOpen.setBorder(javax.swing.BorderFactory.createMatteBorder(1, 1, 1, 1, new java.awt.Color(50, 255, 50)));
        btnOpen.setContentAreaFilled(false);
        btnOpen.setOpaque(true);
        btnOpen.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                btnOpenMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                btnOpenMouseExited(evt);
            }
        });
        btnOpen.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnOpenActionPerformed(evt);
            }
        });

        btnClose.setBackground(new java.awt.Color(150, 255, 150));
        btnClose.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        btnClose.setText("Close");
        btnClose.setBorder(javax.swing.BorderFactory.createMatteBorder(1, 1, 1, 1, new java.awt.Color(50, 255, 50)));
        btnClose.setContentAreaFilled(false);
        btnClose.setOpaque(true);
        btnClose.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                btnCloseMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                btnCloseMouseExited(evt);
            }
        });
        btnClose.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnCloseActionPerformed(evt);
            }
        });

        btnReset.setBackground(new java.awt.Color(150, 255, 150));
        btnReset.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        btnReset.setText("Reset");
        btnReset.setBorder(javax.swing.BorderFactory.createMatteBorder(1, 1, 1, 1, new java.awt.Color(50, 255, 50)));
        btnReset.setContentAreaFilled(false);
        btnReset.setOpaque(true);
        btnReset.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                btnResetMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                btnResetMouseExited(evt);
            }
        });
        btnReset.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnResetActionPerformed(evt);
            }
        });

        jLabel14.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        jLabel14.setText("Vehicle No :");

        cmbVehicleNo.setEditable(true);
        cmbVehicleNo.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N

        btnVehicleSerach.setBackground(new java.awt.Color(150, 255, 150));
        btnVehicleSerach.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        btnVehicleSerach.setIcon(new javax.swing.ImageIcon(getClass().getResource("/icons/search.png"))); // NOI18N
        btnVehicleSerach.setBorder(javax.swing.BorderFactory.createMatteBorder(1, 1, 1, 1, new java.awt.Color(50, 255, 50)));
        btnVehicleSerach.setContentAreaFilled(false);
        btnVehicleSerach.setOpaque(true);
        btnVehicleSerach.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                btnVehicleSerachMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                btnVehicleSerachMouseExited(evt);
            }
        });
        btnVehicleSerach.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnVehicleSerachActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(serviceHistoryPanel, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(btnReset, javax.swing.GroupLayout.PREFERRED_SIZE, 75, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(btnOpen, javax.swing.GroupLayout.PREFERRED_SIZE, 75, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(btnClose, javax.swing.GroupLayout.PREFERRED_SIZE, 75, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel14)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(cmbVehicleNo, javax.swing.GroupLayout.PREFERRED_SIZE, 200, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(btnVehicleSerach, javax.swing.GroupLayout.PREFERRED_SIZE, 50, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(jLabel14, javax.swing.GroupLayout.PREFERRED_SIZE, 25, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addComponent(cmbVehicleNo, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addComponent(btnVehicleSerach, javax.swing.GroupLayout.PREFERRED_SIZE, 25, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(serviceHistoryPanel, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(50, 50, 50)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(btnOpen, javax.swing.GroupLayout.PREFERRED_SIZE, 25, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(btnClose, javax.swing.GroupLayout.PREFERRED_SIZE, 25, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(btnReset, javax.swing.GroupLayout.PREFERRED_SIZE, 25, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(5, 5, 5))
        );

        layout.linkSize(javax.swing.SwingConstants.VERTICAL, new java.awt.Component[] {btnVehicleSerach, cmbVehicleNo, jLabel14});

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btnOpenMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnOpenMouseEntered
        ButtonFunctions.changeBackgroundColor(evt.getSource(), SystemData.MOUSE_ENTER_COLOR);
    }//GEN-LAST:event_btnOpenMouseEntered

    private void btnOpenMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnOpenMouseExited
        ButtonFunctions.changeBackgroundColor(evt.getSource(), SystemData.MOUSE_EXIT_COLOR);
    }//GEN-LAST:event_btnOpenMouseExited

    private void btnOpenActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnOpenActionPerformed
        this.loadService();
    }//GEN-LAST:event_btnOpenActionPerformed

    private void btnCloseMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnCloseMouseEntered
        ButtonFunctions.changeBackgroundColor(evt.getSource(), SystemData.MOUSE_ENTER_COLOR);
    }//GEN-LAST:event_btnCloseMouseEntered

    private void btnCloseMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnCloseMouseExited
        ButtonFunctions.changeBackgroundColor(evt.getSource(), SystemData.MOUSE_EXIT_COLOR);
    }//GEN-LAST:event_btnCloseMouseExited

    private void btnCloseActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnCloseActionPerformed
        this.dispose();
    }//GEN-LAST:event_btnCloseActionPerformed

    private void btnResetMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnResetMouseEntered
        ButtonFunctions.changeBackgroundColor(evt.getSource(), SystemData.MOUSE_ENTER_COLOR);
    }//GEN-LAST:event_btnResetMouseEntered

    private void btnResetMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnResetMouseExited
        ButtonFunctions.changeBackgroundColor(evt.getSource(), SystemData.MOUSE_EXIT_COLOR);
    }//GEN-LAST:event_btnResetMouseExited

    private void btnResetActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnResetActionPerformed
        this.clearAll();
    }//GEN-LAST:event_btnResetActionPerformed

    private void formInternalFrameOpened(javax.swing.event.InternalFrameEvent evt) {//GEN-FIRST:event_formInternalFrameOpened
        Session session = HibernateUtil.getSessionFactory().openSession();

        Criteria vehicleCriteria = session.createCriteria(Vehicle.class)
                .addOrder(Order.asc("vehicleNumber"));
        List<Vehicle> vehicles = vehicleCriteria.list();
        if (!vehicles.isEmpty()) {
            cmbVehicleNo.removeAllItems();
            cmbVehicleNo.addItem("");
            for (Vehicle vehicle : vehicles) {
                cmbVehicleNo.addItem(vehicle.getVehicleNumber());
            }
        }

        AutoCompletion.enable(cmbVehicleNo, btnVehicleSerach);

        session.close();
    }//GEN-LAST:event_formInternalFrameOpened

    private void btnVehicleSerachMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnVehicleSerachMouseEntered
        ButtonFunctions.changeBackgroundColor(evt.getSource(), SystemData.MOUSE_ENTER_COLOR);
    }//GEN-LAST:event_btnVehicleSerachMouseEntered

    private void btnVehicleSerachMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnVehicleSerachMouseExited
        ButtonFunctions.changeBackgroundColor(evt.getSource(), SystemData.MOUSE_EXIT_COLOR);
    }//GEN-LAST:event_btnVehicleSerachMouseExited

    private void btnVehicleSerachActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnVehicleSerachActionPerformed
        Session session = HibernateUtil.getSessionFactory().openSession();

        String vehicleNumber = cmbVehicleNo.getSelectedItem().toString();

        Vehicle vehicle = (Vehicle) session
                .createCriteria(Vehicle.class)
                .add(Restrictions.eq("vehicleNumber", vehicleNumber))
                .uniqueResult();

        List<Sale> sales = session
                .createCriteria(Sale.class)
                .add(Restrictions.eq("vehicle", vehicle))
                .addOrder(Order.desc("createdDate"))
                .addOrder(Order.desc("createdTime"))
                .list();

        if (!sales.isEmpty()) {
            DefaultTableModel tableModel = (DefaultTableModel) tblServices.getModel();
            tableModel.setRowCount(0);
            for (Sale sale : sales) {
                tableModel.addRow(new Object[]{
                    sale.getSaleCode(),
                    SystemData.DATE_FORMAT.format(sale.getCreatedDate()),
                    sale.getPreviousMilage(),
                    sale.getGrandTotal()
                });
            }
        }

        session.close();
    }//GEN-LAST:event_btnVehicleSerachActionPerformed

    private void tblServicesMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_tblServicesMouseClicked
        if (evt.getClickCount() == 2) {
            this.loadService();
        }
    }//GEN-LAST:event_tblServicesMouseClicked

    private void loadService() {
        int selectedRow = tblServices.getSelectedRow();
        if (selectedRow != -1) {
            String saleCode = tblServices.getValueAt(selectedRow, 0).toString();

            if (saleCode.startsWith("SVR")) {
                Session session = HibernateUtil.getSessionFactory().openSession();

                Sale sale = (Sale) session
                        .createCriteria(Sale.class)
                        .add(Restrictions.eq("saleCode", saleCode))
                        .uniqueResult();
                session.close();

                if (sale != null) {
                    try {
                        ServiceHistoryView historyView = new ServiceHistoryView(sale);
                        MainFrame.desktopPane.add(historyView);
                        historyView.setMaximum(true);
                        historyView.setVisible(true);
                    } catch (PropertyVetoException ex) {
                        Logger.getLogger(SaleHistoryFrame.class.getName()).log(Level.SEVERE, null, ex);
                    }
                } else {
                    InformationDialog.showMessageBox("Service not exist", "Not Exist", this);
                }
            } else if (saleCode.startsWith("DRS")) {
                Session session = HibernateUtil.getSessionFactory().openSession();

                Sale sale = (Sale) session
                        .createCriteria(Sale.class)
                        .add(Restrictions.eq("saleCode", saleCode))
                        .uniqueResult();
                session.close();

                if (sale != null) {
                    DirectSaleHistoryView directSaleHistoryView = new DirectSaleHistoryView(sale);
                    MainFrame.desktopPane.add(directSaleHistoryView);
                    directSaleHistoryView.setVisible(true);
                } else {
                    InformationDialog.showMessageBox("Service not exist", "Not Exist", this);
                }
            }
        } else {
            InformationDialog.showMessageBox("Please select a valid service", "Invalid", this);
        }
    }

    private void clearAll() {
        cmbVehicleNo.setSelectedIndex(0);
        ((DefaultTableModel) tblServices.getModel()).setRowCount(0);
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnClose;
    private javax.swing.JButton btnOpen;
    private javax.swing.JButton btnReset;
    private javax.swing.JButton btnVehicleSerach;
    private javax.swing.JComboBox<String> cmbVehicleNo;
    private javax.swing.JLabel jLabel14;
    private javax.swing.JScrollPane scrollPane;
    private javax.swing.JPanel serviceHistoryPanel;
    private javax.swing.JTable tblServices;
    // End of variables declaration//GEN-END:variables
}
