/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servicemaster.internalFrames;

import com.servicemaster.data.SystemData;
import com.servicemaster.dialogs.ConfirmationDialog;
import com.servicemaster.dialogs.InformationDialog;
import com.servicemaster.forms.MainFrame;
import com.servicemaster.keys.KeyCodeFunctions;
import com.servicemaster.guiFunctions.ButtonFunctions;
import com.servicemaster.models.BusinessPartner;
import com.servicemaster.models.Vehicle;
import com.servicemaster.models.VehicleType;
import com.servicemaster.utils.HibernateUtil;
import com.servicemaster.views.VehicleView;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.TreeMap;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author RuwanM
 */
public class VehicleFrame extends javax.swing.JInternalFrame {

    /**
     * Creates new form VehicleFrame
     */
    public VehicleFrame() {
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

        jLabel1 = new javax.swing.JLabel();
        txtVehicleNumber = new javax.swing.JTextField();
        jLabel2 = new javax.swing.JLabel();
        yManufactureYear = new com.toedter.calendar.JYearChooser();
        jLabel3 = new javax.swing.JLabel();
        cmbVehicleType = new javax.swing.JComboBox<>();
        jLabel4 = new javax.swing.JLabel();
        cbxIsActive = new javax.swing.JCheckBox();
        jLabel5 = new javax.swing.JLabel();
        txtRemark = new javax.swing.JTextField();
        jLabel6 = new javax.swing.JLabel();
        txtVehicleCode = new javax.swing.JTextField();
        jLabel7 = new javax.swing.JLabel();
        cmbBusinessPatner = new javax.swing.JComboBox<>();
        btnReset = new javax.swing.JButton();
        btnSave = new javax.swing.JButton();
        btnClose = new javax.swing.JButton();
        btnNew = new javax.swing.JButton();
        btnRefresh = new javax.swing.JButton();
        btnCodeSerach = new javax.swing.JButton();
        btnNameSearch = new javax.swing.JButton();

        setTitle("Vehicle");
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

        jLabel1.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        jLabel1.setText("Vehicle number :");

        txtVehicleNumber.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N

        jLabel2.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        jLabel2.setText("Manuf. year :");

        jLabel3.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        jLabel3.setText("Vehicle type :");

        cmbVehicleType.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        cmbVehicleType.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "--Select--" }));

        jLabel4.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        jLabel4.setText("Is Active :");

        cbxIsActive.setSelected(true);

        jLabel5.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        jLabel5.setText("Remark :");

        txtRemark.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N

        jLabel6.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        jLabel6.setText("Vehicle code :");

        txtVehicleCode.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N

        jLabel7.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        jLabel7.setText("Bus. Patner :");

        cmbBusinessPatner.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        cmbBusinessPatner.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "--Select--" }));

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

        btnSave.setBackground(new java.awt.Color(150, 255, 150));
        btnSave.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        btnSave.setText("Save");
        btnSave.setBorder(javax.swing.BorderFactory.createMatteBorder(1, 1, 1, 1, new java.awt.Color(50, 255, 50)));
        btnSave.setContentAreaFilled(false);
        btnSave.setOpaque(true);
        btnSave.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                btnSaveMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                btnSaveMouseExited(evt);
            }
        });
        btnSave.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnSaveActionPerformed(evt);
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

        btnNew.setBackground(new java.awt.Color(150, 255, 150));
        btnNew.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        btnNew.setText("New");
        btnNew.setBorder(javax.swing.BorderFactory.createMatteBorder(1, 1, 1, 1, new java.awt.Color(50, 255, 50)));
        btnNew.setContentAreaFilled(false);
        btnNew.setOpaque(true);
        btnNew.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                btnNewMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                btnNewMouseExited(evt);
            }
        });
        btnNew.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnNewActionPerformed(evt);
            }
        });

        btnRefresh.setBackground(new java.awt.Color(150, 255, 150));
        btnRefresh.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        btnRefresh.setText("Refresh");
        btnRefresh.setBorder(javax.swing.BorderFactory.createMatteBorder(1, 1, 1, 1, new java.awt.Color(50, 255, 50)));
        btnRefresh.setContentAreaFilled(false);
        btnRefresh.setOpaque(true);
        btnRefresh.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                btnRefreshMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                btnRefreshMouseExited(evt);
            }
        });
        btnRefresh.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnRefreshActionPerformed(evt);
            }
        });

        btnCodeSerach.setBackground(new java.awt.Color(150, 255, 150));
        btnCodeSerach.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        btnCodeSerach.setIcon(new javax.swing.ImageIcon(getClass().getResource("/icons/search.png"))); // NOI18N
        btnCodeSerach.setBorder(javax.swing.BorderFactory.createMatteBorder(1, 1, 1, 1, new java.awt.Color(50, 255, 50)));
        btnCodeSerach.setContentAreaFilled(false);
        btnCodeSerach.setOpaque(true);
        btnCodeSerach.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                btnCodeSerachMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                btnCodeSerachMouseExited(evt);
            }
        });
        btnCodeSerach.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnCodeSerachActionPerformed(evt);
            }
        });

        btnNameSearch.setBackground(new java.awt.Color(150, 255, 150));
        btnNameSearch.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        btnNameSearch.setIcon(new javax.swing.ImageIcon(getClass().getResource("/icons/search.png"))); // NOI18N
        btnNameSearch.setBorder(javax.swing.BorderFactory.createMatteBorder(1, 1, 1, 1, new java.awt.Color(50, 255, 50)));
        btnNameSearch.setContentAreaFilled(false);
        btnNameSearch.setOpaque(true);
        btnNameSearch.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                btnNameSearchMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                btnNameSearchMouseExited(evt);
            }
        });
        btnNameSearch.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnNameSearchActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(jLabel2)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                .addComponent(yManufactureYear, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(jLabel4, javax.swing.GroupLayout.PREFERRED_SIZE, 86, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                .addComponent(cbxIsActive)))
                        .addGap(0, 0, Short.MAX_VALUE))
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(jLabel1)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                .addComponent(txtVehicleNumber))
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(jLabel6)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                .addComponent(txtVehicleCode)))
                        .addGap(4, 4, 4)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(btnCodeSerach, javax.swing.GroupLayout.PREFERRED_SIZE, 50, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(btnNameSearch, javax.swing.GroupLayout.PREFERRED_SIZE, 50, javax.swing.GroupLayout.PREFERRED_SIZE)))
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jLabel5)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(txtRemark))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addGroup(javax.swing.GroupLayout.Alignment.LEADING, layout.createSequentialGroup()
                                .addComponent(jLabel3)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                .addComponent(cmbVehicleType, 0, 294, Short.MAX_VALUE))
                            .addGroup(javax.swing.GroupLayout.Alignment.LEADING, layout.createSequentialGroup()
                                .addComponent(jLabel7)
                                .addGap(10, 10, 10)
                                .addComponent(cmbBusinessPatner, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(btnNew, javax.swing.GroupLayout.PREFERRED_SIZE, 75, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(btnRefresh, javax.swing.GroupLayout.PREFERRED_SIZE, 75, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                        .addGap(0, 0, Short.MAX_VALUE)
                        .addComponent(btnReset, javax.swing.GroupLayout.PREFERRED_SIZE, 75, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(btnSave, javax.swing.GroupLayout.PREFERRED_SIZE, 75, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(btnClose, javax.swing.GroupLayout.PREFERRED_SIZE, 75, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap())
        );

        layout.linkSize(javax.swing.SwingConstants.HORIZONTAL, new java.awt.Component[] {jLabel1, jLabel2, jLabel3, jLabel4, jLabel5, jLabel6, jLabel7});

        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel6)
                            .addComponent(txtVehicleCode, javax.swing.GroupLayout.PREFERRED_SIZE, 25, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel1)
                            .addComponent(txtVehicleNumber, javax.swing.GroupLayout.PREFERRED_SIZE, 25, javax.swing.GroupLayout.PREFERRED_SIZE)))
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(btnCodeSerach, javax.swing.GroupLayout.PREFERRED_SIZE, 25, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(btnNameSearch, javax.swing.GroupLayout.PREFERRED_SIZE, 25, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(jLabel2)
                    .addComponent(yManufactureYear, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel3)
                    .addComponent(cmbVehicleType, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel7)
                    .addComponent(cmbBusinessPatner, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(btnRefresh, javax.swing.GroupLayout.PREFERRED_SIZE, 25, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(btnNew, javax.swing.GroupLayout.PREFERRED_SIZE, 25, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel5, javax.swing.GroupLayout.PREFERRED_SIZE, 21, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(txtRemark, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel4)
                    .addComponent(cbxIsActive))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 84, Short.MAX_VALUE)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(btnSave, javax.swing.GroupLayout.PREFERRED_SIZE, 25, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(btnClose, javax.swing.GroupLayout.PREFERRED_SIZE, 25, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(btnReset, javax.swing.GroupLayout.PREFERRED_SIZE, 25, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap())
        );

        layout.linkSize(javax.swing.SwingConstants.VERTICAL, new java.awt.Component[] {cbxIsActive, cmbBusinessPatner, cmbVehicleType, jLabel1, jLabel2, jLabel3, jLabel4, jLabel5, jLabel6, jLabel7, txtRemark, txtVehicleCode, txtVehicleNumber, yManufactureYear});

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void formInternalFrameOpened(javax.swing.event.InternalFrameEvent evt) {//GEN-FIRST:event_formInternalFrameOpened
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();

        this.loadVehicleType(session);
        this.loadBusinessPartner(session);

        session.getTransaction().commit();
        session.close();
    }//GEN-LAST:event_formInternalFrameOpened

    private void btnResetMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnResetMouseEntered
        ButtonFunctions.changeBackgroundColor(evt.getSource(), SystemData.MOUSE_ENTER_COLOR);
    }//GEN-LAST:event_btnResetMouseEntered

    private void btnResetMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnResetMouseExited
        ButtonFunctions.changeBackgroundColor(evt.getSource(), SystemData.MOUSE_EXIT_COLOR);
    }//GEN-LAST:event_btnResetMouseExited

    private void btnResetActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnResetActionPerformed
        this.clearAll();
    }//GEN-LAST:event_btnResetActionPerformed

    private void btnSaveMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnSaveMouseEntered
        ButtonFunctions.changeBackgroundColor(evt.getSource(), SystemData.MOUSE_ENTER_COLOR);
    }//GEN-LAST:event_btnSaveMouseEntered

    private void btnSaveMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnSaveMouseExited
        ButtonFunctions.changeBackgroundColor(evt.getSource(), SystemData.MOUSE_EXIT_COLOR);
    }//GEN-LAST:event_btnSaveMouseExited

    private void btnSaveActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnSaveActionPerformed
        if (txtVehicleCode.getText().toUpperCase().trim().isEmpty()) {
            List vehicles = this.getVehicleByNumber(txtVehicleNumber.getText().toUpperCase().trim(), false);
            if (!vehicles.isEmpty()) {
                InformationDialog.showMessageBox("Vehicle number already exists.", "Exist", this);
            } else {
                if (((String) cmbVehicleType.getSelectedItem()).trim().equalsIgnoreCase(SystemData.COMBO_DEFAULT)
                        || ((String) cmbBusinessPatner.getSelectedItem()).trim().equalsIgnoreCase(SystemData.COMBO_DEFAULT)) {
                    InformationDialog.showMessageBox("Please select a valid vehicle type and business patner", "Invalid", this);
                } else {
                    KeyCodeFunctions keyCodeFunctions = new KeyCodeFunctions();
                    this.saveOrUpdateVehicle(keyCodeFunctions.getKey("VEH", "Vehivle"), false);
                }
            }
        } else {
            List vehicles = this.getVehicleByCode(txtVehicleCode.getText().toUpperCase().trim(), false);
            if (vehicles.isEmpty()) {
                InformationDialog.showMessageBox("Invalid vehicle code. Please try again", "Invalid", this);
            } else {
                ConfirmationDialog.showMessageBox("Do you want to update?", "Update", this);
                if (ConfirmationDialog.option == ConfirmationDialog.YES_OPTION) {
                    if (((String) cmbVehicleType.getSelectedItem()).trim().equalsIgnoreCase(SystemData.COMBO_DEFAULT)
                            || ((String) cmbBusinessPatner.getSelectedItem()).trim().equalsIgnoreCase(SystemData.COMBO_DEFAULT)) {
                        InformationDialog.showMessageBox("Please select a valid vehicle type and business patner", "Invalid", this);
                    } else {
                        this.saveOrUpdateVehicle(txtVehicleCode.getText().toUpperCase().trim(), true);
                    }
                }
            }
        }
    }//GEN-LAST:event_btnSaveActionPerformed

    private void btnCloseMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnCloseMouseEntered
        ButtonFunctions.changeBackgroundColor(evt.getSource(), SystemData.MOUSE_ENTER_COLOR);
    }//GEN-LAST:event_btnCloseMouseEntered

    private void btnCloseMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnCloseMouseExited
        ButtonFunctions.changeBackgroundColor(evt.getSource(), SystemData.MOUSE_EXIT_COLOR);
    }//GEN-LAST:event_btnCloseMouseExited

    private void btnCloseActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnCloseActionPerformed
        ConfirmationDialog.showMessageBox("Are you sure?", "Sure", this);
        if (ConfirmationDialog.option == ConfirmationDialog.YES_OPTION) {
            this.dispose();
        }
    }//GEN-LAST:event_btnCloseActionPerformed

    private void btnNewMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnNewMouseEntered
        ButtonFunctions.changeBackgroundColor(evt.getSource(), SystemData.MOUSE_ENTER_COLOR);
    }//GEN-LAST:event_btnNewMouseEntered

    private void btnNewMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnNewMouseExited
        ButtonFunctions.changeBackgroundColor(evt.getSource(), SystemData.MOUSE_EXIT_COLOR);
    }//GEN-LAST:event_btnNewMouseExited

    private void btnNewActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnNewActionPerformed
        BusinessPartnerFrame partnerFrame = new BusinessPartnerFrame();
        MainFrame.desktopPane.add(partnerFrame);
        partnerFrame.setVisible(true);
    }//GEN-LAST:event_btnNewActionPerformed

    private void btnRefreshMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnRefreshMouseEntered
        ButtonFunctions.changeBackgroundColor(evt.getSource(), SystemData.MOUSE_ENTER_COLOR);
    }//GEN-LAST:event_btnRefreshMouseEntered

    private void btnRefreshMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnRefreshMouseExited
        ButtonFunctions.changeBackgroundColor(evt.getSource(), SystemData.MOUSE_EXIT_COLOR);
    }//GEN-LAST:event_btnRefreshMouseExited

    private void btnRefreshActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnRefreshActionPerformed
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        this.loadBusinessPartner(session);
        session.close();
    }//GEN-LAST:event_btnRefreshActionPerformed

    private void btnCodeSerachMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnCodeSerachMouseEntered
        ButtonFunctions.changeBackgroundColor(evt.getSource(), SystemData.MOUSE_ENTER_COLOR);
    }//GEN-LAST:event_btnCodeSerachMouseEntered

    private void btnCodeSerachMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnCodeSerachMouseExited
        ButtonFunctions.changeBackgroundColor(evt.getSource(), SystemData.MOUSE_EXIT_COLOR);
    }//GEN-LAST:event_btnCodeSerachMouseExited

    private void btnCodeSerachActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnCodeSerachActionPerformed
        String vehicleCode = txtVehicleCode.getText().trim();

        List vehicles = this.getVehicleByCode(vehicleCode, true);
        if (!vehicles.isEmpty()) {
            VehicleView vehicleView = new VehicleView(vehicles, this);
            MainFrame.desktopPane.add(vehicleView);
            vehicleView.setVisible(true);
        }
    }//GEN-LAST:event_btnCodeSerachActionPerformed

    private void btnNameSearchMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnNameSearchMouseEntered
        ButtonFunctions.changeBackgroundColor(evt.getSource(), SystemData.MOUSE_ENTER_COLOR);
    }//GEN-LAST:event_btnNameSearchMouseEntered

    private void btnNameSearchMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnNameSearchMouseExited
        ButtonFunctions.changeBackgroundColor(evt.getSource(), SystemData.MOUSE_EXIT_COLOR);
    }//GEN-LAST:event_btnNameSearchMouseExited

    private void btnNameSearchActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnNameSearchActionPerformed
        String vehicleNumber = txtVehicleNumber.getText().trim();

        List vehicles = this.getVehicleByNumber(vehicleNumber, true);
        if (!vehicles.isEmpty()) {
            VehicleView vehicleView = new VehicleView(vehicles, this);
            MainFrame.desktopPane.add(vehicleView);
            vehicleView.setVisible(true);
        }
    }//GEN-LAST:event_btnNameSearchActionPerformed

    private List getVehicleByCode(String vehicleCode, boolean like) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        Query query;
        if (like) {
            query = session.createQuery("from Vehicle v join fetch v.vehicleType where v.vehicleCode like :code");
            query.setParameter("code", "%" + vehicleCode + "%");
        } else {
            query = session.createQuery("from Vehicle v join fetch v.vehicleType where v.vehicleCode = :code");
            query.setParameter("code", vehicleCode);
        }
        List list = query.list();
        session.getTransaction().commit();
        session.close();
        return list;
    }

    private List getVehicleByNumber(String vehicleNumber, boolean like) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        Query query;
        if (like) {
            query = session.createQuery("from Vehicle v join fetch v.vehicleType where v.vehicleNumber like :code");
            query.setParameter("code", "%" + vehicleNumber + "%");
        } else {
            query = session.createQuery("from Vehicle v join fetch v.vehicleType where v.vehicleNumber = :code");
            query.setParameter("code", vehicleNumber);
        }
        List list = query.list();
        session.getTransaction().commit();
        session.close();
        return list;
    }

    public void setVehicleCode(String vehicleCode) {
        this.txtVehicleCode.setText(vehicleCode);
    }

    public void setVehicleNumber(String vehicleNumber) {
        this.txtVehicleNumber.setText(vehicleNumber);
    }

    public void setManufacturedYear(String manufactureYear) {
        this.yManufactureYear.setYear(Integer.parseInt(manufactureYear));
    }

    public void setVehicleType(String vehicleType) {
        VehicleType vType = this.vehicleTypeMap.get(vehicleType);
        this.cmbVehicleType.setSelectedItem(vType.getVehicleTypeCode() + "-" + vType.getVehicleTypeName());
    }

    public void setBusinessPatner(String businessPatner) {
        BusinessPartner bPatner = this.businessPatnerMap.get(businessPatner);
        this.cmbBusinessPatner.setSelectedItem(bPatner.getBusinessPartnerCode() + "-" + bPatner.getFirstName() + " " + bPatner.getLastName());
    }

    public void setRemark(String remark) {
        this.txtRemark.setText(remark);
    }

    public void setIsActive(boolean isActive) {
        this.cbxIsActive.setSelected(isActive);
    }

    public void setVehicleodeEditable(boolean editable) {
        txtVehicleNumber.setEditable(editable);
    }

    public void setBtnSaveText(String text) {
        this.btnSave.setText(text);
    }

    private void clearAll() {
        txtVehicleCode.setText("");
        txtVehicleNumber.setText("");
        yManufactureYear.setYear(Calendar.getInstance().get(Calendar.YEAR));
        txtRemark.setText("");
        cbxIsActive.setSelected(false);
        txtVehicleNumber.setEditable(true);
        cmbVehicleType.setSelectedIndex(0);
        cmbBusinessPatner.setSelectedIndex(0);
    }

    private void saveOrUpdateVehicle(String strVehicleCode, boolean bUpdate) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();

        VehicleType vehicleType = (VehicleType) session.createCriteria(VehicleType.class)
                .add(Restrictions.eq("vehicleTypeCode", ((String) cmbVehicleType.getSelectedItem()).split("-")[0].trim()))
                .uniqueResult();

        BusinessPartner businessPartner = (BusinessPartner) session.createCriteria(BusinessPartner.class)
                .add(Restrictions.eq("businessPartnerCode", ((String) cmbBusinessPatner.getSelectedItem()).split("-")[0].trim()))
                .uniqueResult();

        Vehicle vehicle = new Vehicle();
        vehicle.setVehicleCode(strVehicleCode);
        vehicle.setVehicleNumber(txtVehicleNumber.getText().toUpperCase().trim());
        vehicle.setManufactureredYear("" + yManufactureYear.getYear());
        vehicle.setVehicleType(vehicleType);
        vehicle.setBusinessPartner(businessPartner);
        vehicle.setRemark(txtRemark.getText().toUpperCase().trim());
        vehicle.setIsActive(cbxIsActive.isSelected() ? 1 : 0);
        if (bUpdate) {
            vehicle.setModifiedDate(new Date());
            vehicle.setModifiedTime(new Date());
            vehicle.setModifiedUser(MainFrame.user.getUserId());
        } else {
            vehicle.setCreatedDate(new Date());
            vehicle.setCreatedTime(new Date());
            vehicle.setCreatedUser(MainFrame.user.getUserId());
        }
        session.saveOrUpdate(vehicle);

        session.getTransaction().commit();
        session.close();

        if (bUpdate) {
            InformationDialog.showMessageBox("Successfully updated", "Success", this);
        } else {
            InformationDialog.showMessageBox("New entry created successfully", "Success", this);
        }
        this.clearAll();
    }

    private void loadBusinessPartner(Session session) {
        Query query = session.createQuery("from BusinessPartner b order by b.businessPartnerCode");
        List list = query.list();
        if (!list.isEmpty()) {
            cmbBusinessPatner.removeAllItems();
            for (Object object : list) {
                if (object instanceof BusinessPartner) {
                    BusinessPartner businessPartner = (BusinessPartner) object;
                    String businessPartnerCode = businessPartner.getBusinessPartnerCode();
                    String businessPartnerName = businessPartner.getFirstName() + " " + businessPartner.getLastName();
                    cmbBusinessPatner.addItem(businessPartnerCode + "-" + businessPartnerName);
                    this.businessPatnerMap.put(businessPartnerCode, businessPartner);
                }
            }
        }
    }

    private void loadVehicleType(Session session) {
        Query query = session.createQuery("from VehicleType v order by v.vehicleTypeCode");
        List list = query.list();
        if (!list.isEmpty()) {
            for (Object object : list) {
                if (object instanceof VehicleType) {
                    VehicleType vehicleType = (VehicleType) object;
                    String vehicleTypeName = vehicleType.getVehicleTypeName();
                    String vehicleTypeCode = vehicleType.getVehicleTypeCode();
                    cmbVehicleType.addItem(vehicleTypeCode + "-" + vehicleTypeName);
                    this.vehicleTypeMap.put(vehicleTypeCode, vehicleType);
                }
            }
        }
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnClose;
    private javax.swing.JButton btnCodeSerach;
    private javax.swing.JButton btnNameSearch;
    private javax.swing.JButton btnNew;
    private javax.swing.JButton btnRefresh;
    private javax.swing.JButton btnReset;
    private javax.swing.JButton btnSave;
    private javax.swing.JCheckBox cbxIsActive;
    private javax.swing.JComboBox<String> cmbBusinessPatner;
    private javax.swing.JComboBox<String> cmbVehicleType;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JTextField txtRemark;
    private javax.swing.JTextField txtVehicleCode;
    private javax.swing.JTextField txtVehicleNumber;
    private com.toedter.calendar.JYearChooser yManufactureYear;
    // End of variables declaration//GEN-END:variables
    private final TreeMap<String, VehicleType> vehicleTypeMap = new TreeMap<>();
    private final TreeMap<String, BusinessPartner> businessPatnerMap = new TreeMap<>();
}
