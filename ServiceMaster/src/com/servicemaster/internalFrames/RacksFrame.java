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
import com.servicemaster.guiFunctions.LableFunctions;
import com.servicemaster.models.KeyTable;
import com.servicemaster.models.Rack;
import com.servicemaster.models.Storage;
import com.servicemaster.utils.HibernateUtil;
import com.servicemaster.views.RacksView;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.TreeMap;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author RuwanM
 */
public class RacksFrame extends javax.swing.JInternalFrame {

    /**
     * Creates new form SubCategory
     */
    public RacksFrame() {
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
        txtRackCode = new javax.swing.JTextField();
        lblCodeSearch = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        cmbStorage = new javax.swing.JComboBox<>();
        jLabel3 = new javax.swing.JLabel();
        txtRackName = new javax.swing.JTextField();
        lblNameSearch = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        txtRemark = new javax.swing.JTextField();
        jLabel5 = new javax.swing.JLabel();
        cbxIsActive = new javax.swing.JCheckBox();
        lblClose = new javax.swing.JLabel();
        lblUpdate = new javax.swing.JLabel();
        lblView = new javax.swing.JLabel();
        lblSlots = new javax.swing.JLabel();

        setTitle("Rack");
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
        jLabel1.setText("Rack code :");

        txtRackCode.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N

        lblCodeSearch.setBackground(new java.awt.Color(150, 255, 150));
        lblCodeSearch.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        lblCodeSearch.setIcon(new javax.swing.ImageIcon(getClass().getResource("/icons/search.png"))); // NOI18N
        lblCodeSearch.setBorder(javax.swing.BorderFactory.createMatteBorder(1, 1, 1, 1, new java.awt.Color(50, 255, 50)));
        lblCodeSearch.setOpaque(true);
        lblCodeSearch.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                lblCodeSearchMouseClicked(evt);
            }
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                lblCodeSearchMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                lblCodeSearchMouseExited(evt);
            }
        });

        jLabel2.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        jLabel2.setText("Storage code :");

        cmbStorage.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        cmbStorage.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "--Select--" }));

        jLabel3.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        jLabel3.setText("Rack name :");

        txtRackName.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N

        lblNameSearch.setBackground(new java.awt.Color(150, 255, 150));
        lblNameSearch.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        lblNameSearch.setIcon(new javax.swing.ImageIcon(getClass().getResource("/icons/search.png"))); // NOI18N
        lblNameSearch.setBorder(javax.swing.BorderFactory.createMatteBorder(1, 1, 1, 1, new java.awt.Color(50, 255, 50)));
        lblNameSearch.setOpaque(true);
        lblNameSearch.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                lblNameSearchMouseClicked(evt);
            }
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                lblNameSearchMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                lblNameSearchMouseExited(evt);
            }
        });

        jLabel4.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        jLabel4.setText("Remark :");

        txtRemark.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N

        jLabel5.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        jLabel5.setText("Is Active :");

        cbxIsActive.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        cbxIsActive.setSelected(true);

        lblClose.setBackground(new java.awt.Color(150, 255, 150));
        lblClose.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        lblClose.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        lblClose.setText("Close");
        lblClose.setBorder(javax.swing.BorderFactory.createMatteBorder(1, 1, 1, 1, new java.awt.Color(50, 255, 50)));
        lblClose.setOpaque(true);
        lblClose.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                lblCloseMouseClicked(evt);
            }
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                lblCloseMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                lblCloseMouseExited(evt);
            }
        });

        lblUpdate.setBackground(new java.awt.Color(150, 255, 150));
        lblUpdate.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        lblUpdate.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        lblUpdate.setText("Update");
        lblUpdate.setBorder(javax.swing.BorderFactory.createMatteBorder(1, 1, 1, 1, new java.awt.Color(50, 255, 50)));
        lblUpdate.setOpaque(true);
        lblUpdate.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                lblUpdateMouseClicked(evt);
            }
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                lblUpdateMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                lblUpdateMouseExited(evt);
            }
        });

        lblView.setBackground(new java.awt.Color(150, 255, 150));
        lblView.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        lblView.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        lblView.setText("View");
        lblView.setBorder(javax.swing.BorderFactory.createMatteBorder(1, 1, 1, 1, new java.awt.Color(50, 255, 50)));
        lblView.setOpaque(true);
        lblView.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                lblViewMouseClicked(evt);
            }
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                lblViewMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                lblViewMouseExited(evt);
            }
        });

        lblSlots.setBackground(new java.awt.Color(150, 255, 150));
        lblSlots.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        lblSlots.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        lblSlots.setText("Slots");
        lblSlots.setBorder(javax.swing.BorderFactory.createMatteBorder(1, 1, 1, 1, new java.awt.Color(50, 255, 50)));
        lblSlots.setEnabled(false);
        lblSlots.setOpaque(true);
        lblSlots.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                lblSlotsMouseClicked(evt);
            }
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                lblSlotsMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                lblSlotsMouseExited(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                        .addGap(0, 0, Short.MAX_VALUE)
                        .addComponent(lblSlots, javax.swing.GroupLayout.PREFERRED_SIZE, 75, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(lblView, javax.swing.GroupLayout.PREFERRED_SIZE, 75, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(lblUpdate, javax.swing.GroupLayout.PREFERRED_SIZE, 75, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(lblClose, javax.swing.GroupLayout.PREFERRED_SIZE, 75, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(jLabel1)
                                    .addComponent(jLabel2))
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addGroup(layout.createSequentialGroup()
                                        .addComponent(txtRackCode, javax.swing.GroupLayout.PREFERRED_SIZE, 234, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                        .addComponent(lblCodeSearch, javax.swing.GroupLayout.PREFERRED_SIZE, 50, javax.swing.GroupLayout.PREFERRED_SIZE))
                                    .addComponent(cmbStorage, javax.swing.GroupLayout.PREFERRED_SIZE, 288, javax.swing.GroupLayout.PREFERRED_SIZE)))
                            .addGroup(layout.createSequentialGroup()
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(jLabel4)
                                    .addComponent(jLabel5))
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(cbxIsActive)
                                    .addComponent(txtRemark, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(jLabel3)
                                .addGap(10, 10, 10)
                                .addComponent(txtRackName, javax.swing.GroupLayout.PREFERRED_SIZE, 234, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(lblNameSearch, javax.swing.GroupLayout.PREFERRED_SIZE, 50, javax.swing.GroupLayout.PREFERRED_SIZE)))
                        .addGap(0, 0, Short.MAX_VALUE)))
                .addContainerGap())
        );

        layout.linkSize(javax.swing.SwingConstants.HORIZONTAL, new java.awt.Component[] {jLabel1, jLabel2, jLabel3, jLabel4, jLabel5});

        layout.linkSize(javax.swing.SwingConstants.HORIZONTAL, new java.awt.Component[] {lblCodeSearch, lblNameSearch});

        layout.linkSize(javax.swing.SwingConstants.HORIZONTAL, new java.awt.Component[] {txtRackCode, txtRackName});

        layout.linkSize(javax.swing.SwingConstants.HORIZONTAL, new java.awt.Component[] {cmbStorage, txtRemark});

        layout.linkSize(javax.swing.SwingConstants.HORIZONTAL, new java.awt.Component[] {lblClose, lblSlots, lblUpdate, lblView});

        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(lblCodeSearch)
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(jLabel1)
                        .addComponent(txtRackCode, javax.swing.GroupLayout.PREFERRED_SIZE, 25, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(jLabel3)
                        .addComponent(txtRackName, javax.swing.GroupLayout.PREFERRED_SIZE, 25, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addComponent(lblNameSearch))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel2)
                    .addComponent(cmbStorage, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel4)
                    .addComponent(txtRemark, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(cbxIsActive)
                    .addComponent(jLabel5))
                .addGap(70, 70, 70)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(lblClose, javax.swing.GroupLayout.PREFERRED_SIZE, 25, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(lblUpdate, javax.swing.GroupLayout.PREFERRED_SIZE, 25, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(lblView, javax.swing.GroupLayout.PREFERRED_SIZE, 25, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(lblSlots, javax.swing.GroupLayout.PREFERRED_SIZE, 25, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap())
        );

        layout.linkSize(javax.swing.SwingConstants.VERTICAL, new java.awt.Component[] {cbxIsActive, cmbStorage, jLabel1, jLabel2, jLabel3, jLabel4, jLabel5, lblCodeSearch, lblNameSearch, txtRackCode, txtRackName, txtRemark});

        layout.linkSize(javax.swing.SwingConstants.VERTICAL, new java.awt.Component[] {lblClose, lblSlots, lblUpdate, lblView});

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void lblCodeSearchMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lblCodeSearchMouseClicked
        String rackCode = txtRackCode.getText().trim();

        List racks = getRackByCode(rackCode, true);
        if (!racks.isEmpty()) {
            RacksView rackView = new RacksView(racks, this);
            MainFrame.desktopPane.add(rackView);
            rackView.setVisible(true);
        }
    }//GEN-LAST:event_lblCodeSearchMouseClicked

    private void lblCodeSearchMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lblCodeSearchMouseEntered
        LableFunctions.changeBackgroundColor(evt.getSource(), SystemData.MOUSE_ENTER_COLOR);
    }//GEN-LAST:event_lblCodeSearchMouseEntered

    private void lblCodeSearchMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lblCodeSearchMouseExited
        LableFunctions.changeBackgroundColor(evt.getSource(), SystemData.MOUSE_EXIT_COLOR);
    }//GEN-LAST:event_lblCodeSearchMouseExited

    private void lblNameSearchMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lblNameSearchMouseClicked
        String rackName = txtRackName.getText().trim();
        List racks = getRackByName(rackName, true);

        if (racks.size() > 0) {
            RacksView racksView = new RacksView(racks, this);
            MainFrame.desktopPane.add(racksView);
            racksView.setVisible(true);
        }
    }//GEN-LAST:event_lblNameSearchMouseClicked

    private void lblNameSearchMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lblNameSearchMouseEntered
        LableFunctions.changeBackgroundColor(evt.getSource(), SystemData.MOUSE_ENTER_COLOR);
    }//GEN-LAST:event_lblNameSearchMouseEntered

    private void lblNameSearchMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lblNameSearchMouseExited
        LableFunctions.changeBackgroundColor(evt.getSource(), SystemData.MOUSE_EXIT_COLOR);
    }//GEN-LAST:event_lblNameSearchMouseExited

    private void lblCloseMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lblCloseMouseClicked
        ConfirmationDialog.showMessageBox("Are you sure?", "Sure");
        if (ConfirmationDialog.option == ConfirmationDialog.YES_OPTION) {
            this.dispose();
        }
    }//GEN-LAST:event_lblCloseMouseClicked

    private void lblCloseMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lblCloseMouseEntered
        LableFunctions.changeBackgroundColor(evt.getSource(), SystemData.MOUSE_ENTER_COLOR);
    }//GEN-LAST:event_lblCloseMouseEntered

    private void lblCloseMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lblCloseMouseExited
        LableFunctions.changeBackgroundColor(evt.getSource(), SystemData.MOUSE_EXIT_COLOR);
    }//GEN-LAST:event_lblCloseMouseExited

    private void lblUpdateMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lblUpdateMouseClicked
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        String rackCode = txtRackCode.getText().toUpperCase().trim();
        String rackName = txtRackName.getText().toUpperCase().trim();
        String storage = ((String) cmbStorage.getSelectedItem()).trim();
        String remark = txtRemark.getText().toUpperCase().trim();
        boolean isActivated = cbxIsActive.isSelected();

        if (rackCode.isEmpty()) {
            List subCategories = this.getRackByName(rackName, false);
            if (subCategories.size() > 0) {
                InformationDialog.showMessageBox("Item name already exists.", "Exist");
            } else {
                session.getTransaction().commit();
                session.close();
                if (storage.equalsIgnoreCase(SystemData.COMBO_DEFAULT)) {
                    InformationDialog.showMessageBox("Please select a valid storage", "Invalid");
                } else {
                    this.createNewRack(rackName, remark, isActivated, this.storageMap.get(storage.split("-")[0].trim()));
                }
            }
        } else {
            List subCategories = this.getRackByCode(rackCode, false);
            if (subCategories.isEmpty()) {
                ConfirmationDialog.showMessageBox("Code does not exist. Create new?", "New");
                if (ConfirmationDialog.option == ConfirmationDialog.YES_OPTION) {
                    session.getTransaction().commit();
                    session.close();
                    if (storage.equalsIgnoreCase(SystemData.COMBO_DEFAULT)) {
                        InformationDialog.showMessageBox("Please select a valid storage", "Invalid");
                    } else {
                        this.createNewRack(rackName, remark, isActivated, this.storageMap.get(storage.split("-")[0].trim()));
                    }
                }
            } else {
                ConfirmationDialog.showMessageBox("Do you want to update?", "Update");
                if (ConfirmationDialog.option == ConfirmationDialog.YES_OPTION) {
                    if (storage.equalsIgnoreCase(SystemData.COMBO_DEFAULT)) {
                        InformationDialog.showMessageBox("Please select a valid storage", "Invalid");
                    } else {
                        Rack rack = new Rack(rackCode);
                        rack.setRackName(rackName);
                        rack.setStorage(this.storageMap.get(storage.split("-")[0].trim()));
                        rack.setRemark(remark);
                        rack.setIsActive(isActivated ? 1 : 0);
                        rack.setModifiedDate(new Date());
                        rack.setModifiedTime(new Date());
                        rack.setModifiedUser(MainFrame.user.getUserId());
                        session.saveOrUpdate(rack);

                        session.getTransaction().commit();
                        session.close();

                        InformationDialog.showMessageBox("Updated successfully.", "Success");
                        this.resetFrame();

                        this.lblSlots.setEnabled(true);
                    }
                }
            }
        }
    }//GEN-LAST:event_lblUpdateMouseClicked

    private void lblUpdateMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lblUpdateMouseEntered
        LableFunctions.changeBackgroundColor(evt.getSource(), SystemData.MOUSE_ENTER_COLOR);
    }//GEN-LAST:event_lblUpdateMouseEntered

    private void lblUpdateMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lblUpdateMouseExited
        LableFunctions.changeBackgroundColor(evt.getSource(), SystemData.MOUSE_EXIT_COLOR);
    }//GEN-LAST:event_lblUpdateMouseExited

    private void lblViewMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lblViewMouseClicked
        // TODO add your handling code here:
    }//GEN-LAST:event_lblViewMouseClicked

    private void lblViewMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lblViewMouseEntered
        LableFunctions.changeBackgroundColor(evt.getSource(), SystemData.MOUSE_ENTER_COLOR);
    }//GEN-LAST:event_lblViewMouseEntered

    private void lblViewMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lblViewMouseExited
        LableFunctions.changeBackgroundColor(evt.getSource(), SystemData.MOUSE_EXIT_COLOR);
    }//GEN-LAST:event_lblViewMouseExited

    private void formInternalFrameOpened(javax.swing.event.InternalFrameEvent evt) {//GEN-FIRST:event_formInternalFrameOpened
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();

        Query query = session.createQuery("from Storage s order by s.storageCode");
        List list = query.list();
        if (!list.isEmpty()) {
            for (Object object : list) {
                if (object instanceof Storage) {
                    Storage storage = (Storage) object;
                    String storageName = storage.getStorageName();
                    String storageCode = storage.getStorageCode();
                    cmbStorage.addItem(storageCode + "-" + storageName);
                    this.storageMap.put(storageCode, storage);
                }
            }
        }

        session.getTransaction().commit();
        session.close();
    }//GEN-LAST:event_formInternalFrameOpened

    private void lblSlotsMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lblSlotsMouseClicked
        if (this.lblSlots.isEnabled()) {
            HashMap<String, Object> map = new HashMap<>();
            map.put("ModuleCode", "5");
            map.put("Max", 0);
            MainFrame.openWindow(map);
            this.dispose();
        }
    }//GEN-LAST:event_lblSlotsMouseClicked

    private void lblSlotsMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lblSlotsMouseEntered
        if (this.lblSlots.isEnabled()) {
            LableFunctions.changeBackgroundColor(evt.getSource(), SystemData.MOUSE_ENTER_COLOR);
        }
    }//GEN-LAST:event_lblSlotsMouseEntered

    private void lblSlotsMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lblSlotsMouseExited
        if (this.lblSlots.isEnabled()) {
            LableFunctions.changeBackgroundColor(evt.getSource(), SystemData.MOUSE_EXIT_COLOR);
        }
    }//GEN-LAST:event_lblSlotsMouseExited

    public void setCbxIsActive(boolean isActive) {
        this.cbxIsActive.setSelected(isActive);
    }

    public void setTxtRemark(String remark) {
        this.txtRemark.setText(remark);
    }

    public void setTxtRackCode(String subCategoryCode) {
        this.txtRackCode.setText(subCategoryCode);
    }

    public void setTxtRackName(String subCategoryName) {
        this.txtRackName.setText(subCategoryName);
    }

    public void setCmbCategory(String storage) {
        Storage stor = this.storageMap.get(storage);
        this.cmbStorage.setSelectedItem(stor.getStorageCode() + "-" + stor.getStorageName());
    }

    public void setTxtCodeEditable(boolean editable) {
        txtRackCode.setEditable(editable);
    }

    private List getRackByCode(String rackCode, boolean like) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        Query query;
        if (like) {
            query = session.createQuery("from Rack r join fetch r.storage where r.rackCode like :code");
            query.setParameter("code", "%" + rackCode + "%");
        } else {
            query = session.createQuery("from Rack r join fetch r.storage where r.rackCode = :code");
            query.setParameter("code", rackCode);
        }
        List list = query.list();
        session.getTransaction().commit();
        session.close();
        return list;
    }

    private List getRackByName(String rackName, boolean like) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        Query query;
        if (like) {
            query = session.createQuery("from Rack r join fetch r.storage where r.rackName like :name");
            query.setParameter("name", "%" + rackName + "%");
        } else {
            query = session.createQuery("from Rack r join fetch r.storage where r.rackName = :name");
            query.setParameter("name", rackName);
        }
        List list = query.list();
        session.getTransaction().commit();
        session.close();
        return list;
    }

    private void resetFrame() {
        txtRackCode.setText("");
        txtRackName.setText("");
        txtRemark.setText("");
        cbxIsActive.setSelected(false);
        txtRackCode.setEditable(true);
        cmbStorage.setSelectedIndex(0);
    }

    private void createNewRack(String subCategoryName, String remark, boolean isActivated,
            Storage storage) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        String catCode;
        Query query = session.createQuery("from KeyTable k where k.keyCode = :code");
        query.setParameter("code", "RAC");
        List keyList = query.list();
        if (keyList.size() > 0) {
            KeyTable keyTable = (KeyTable) keyList.get(0);
            Integer keyNumber = keyTable.getKeyNumber();
            keyTable.setKeyNumber(keyNumber + 1);
            keyTable.setModifiedDate(new Date());
            keyTable.setModifiedTime(new Date());
            keyTable.setModifiedUser(MainFrame.user.getUserId());
            session.saveOrUpdate(keyTable);
            catCode = "RAC" + keyNumber;
        } else {
            KeyTable keyTable = new KeyTable();
            keyTable.setKeyCode("RAC");
            keyTable.setKeyNumber(1001);
            keyTable.setKeyRemark("Rack");
            keyTable.setCreatedDate(new Date());
            keyTable.setCreatedTime(new Date());
            keyTable.setCreatedUser(MainFrame.user.getUserId());
            session.saveOrUpdate(keyTable);
            catCode = "RAC1000";
        }

        Rack rack = new Rack();
        rack.setRackCode(catCode);
        rack.setRackName(subCategoryName);
        rack.setStorage(storage);
        rack.setRemark(remark);
        rack.setIsActive(isActivated ? 1 : 0);
        rack.setCreatedDate(new Date());
        rack.setCreatedTime(new Date());
        rack.setCreatedUser(MainFrame.user.getUserId());
        session.saveOrUpdate(rack);

        session.getTransaction().commit();
        session.close();

        InformationDialog.showMessageBox("Updated successfully.", "Success");
        this.resetFrame();

        this.lblSlots.setEnabled(true);
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JCheckBox cbxIsActive;
    private javax.swing.JComboBox<String> cmbStorage;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel lblClose;
    private javax.swing.JLabel lblCodeSearch;
    private javax.swing.JLabel lblNameSearch;
    private javax.swing.JLabel lblSlots;
    private javax.swing.JLabel lblUpdate;
    private javax.swing.JLabel lblView;
    private javax.swing.JTextField txtRackCode;
    private javax.swing.JTextField txtRackName;
    private javax.swing.JTextField txtRemark;
    // End of variables declaration//GEN-END:variables
    private final TreeMap<String, Storage> storageMap = new TreeMap<>();
}
