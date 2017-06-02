/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servicemaster.internalFrames;

import com.servicemaster.data.SystemData;
import com.servicemaster.entities.Category;
import com.servicemaster.entities.KeyTable;
import com.servicemaster.entities.SubCategory;
import com.servicemaster.entities.SubCategoryType;
import com.servicemaster.forms.MainFrame;
import com.servicemaster.guiFunctions.LableFunctions;
import com.servicemaster.utils.HibernateUtil;
import com.servicemaster.views.SubCategoryView;
import java.util.Date;
import java.util.List;
import java.util.TreeMap;
import javax.swing.JOptionPane;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author RuwanM
 */
public class SubCategoryFrame extends javax.swing.JInternalFrame {

    /**
     * Creates new form SubCategory
     */
    public SubCategoryFrame() {
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
        txtSubcategoryCode = new javax.swing.JTextField();
        lblCodeSearch = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        cmbCategory = new javax.swing.JComboBox<>();
        jLabel3 = new javax.swing.JLabel();
        txtSubcategoryName = new javax.swing.JTextField();
        lblNameSearch = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        txtRemark = new javax.swing.JTextField();
        jLabel5 = new javax.swing.JLabel();
        cbxIsActive = new javax.swing.JCheckBox();
        lblClose = new javax.swing.JLabel();
        lblUpdate = new javax.swing.JLabel();
        lblView = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        cmbSubCategoryType = new javax.swing.JComboBox<>();

        setTitle("Sub category");
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
        jLabel1.setText("Sub category code :");

        txtSubcategoryCode.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N

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
        jLabel2.setText("Category code :");

        cmbCategory.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        cmbCategory.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "--Select--" }));

        jLabel3.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        jLabel3.setText("Sub category name :");

        txtSubcategoryName.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N

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

        jLabel6.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        jLabel6.setText("Sub category type :");

        cmbSubCategoryType.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        cmbSubCategoryType.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "--Select--" }));

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel1)
                            .addComponent(jLabel2))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(txtSubcategoryCode, javax.swing.GroupLayout.PREFERRED_SIZE, 234, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .addComponent(lblCodeSearch, javax.swing.GroupLayout.PREFERRED_SIZE, 50, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(cmbCategory, javax.swing.GroupLayout.PREFERRED_SIZE, 288, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(0, 0, Short.MAX_VALUE))))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                        .addGap(0, 0, Short.MAX_VALUE)
                        .addComponent(lblView, javax.swing.GroupLayout.PREFERRED_SIZE, 75, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(lblUpdate, javax.swing.GroupLayout.PREFERRED_SIZE, 75, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(lblClose, javax.swing.GroupLayout.PREFERRED_SIZE, 75, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel4)
                            .addComponent(jLabel5))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(cbxIsActive)
                            .addComponent(txtRemark, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jLabel6)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(cmbSubCategoryType, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jLabel3)
                        .addGap(10, 10, 10)
                        .addComponent(txtSubcategoryName, javax.swing.GroupLayout.PREFERRED_SIZE, 234, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(lblNameSearch, javax.swing.GroupLayout.PREFERRED_SIZE, 50, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap())
        );

        layout.linkSize(javax.swing.SwingConstants.HORIZONTAL, new java.awt.Component[] {jLabel1, jLabel2, jLabel3, jLabel4, jLabel5, jLabel6});

        layout.linkSize(javax.swing.SwingConstants.HORIZONTAL, new java.awt.Component[] {lblCodeSearch, lblNameSearch});

        layout.linkSize(javax.swing.SwingConstants.HORIZONTAL, new java.awt.Component[] {txtSubcategoryCode, txtSubcategoryName});

        layout.linkSize(javax.swing.SwingConstants.HORIZONTAL, new java.awt.Component[] {cmbCategory, cmbSubCategoryType, txtRemark});

        layout.linkSize(javax.swing.SwingConstants.HORIZONTAL, new java.awt.Component[] {lblClose, lblUpdate, lblView});

        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(lblCodeSearch)
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(jLabel1)
                        .addComponent(txtSubcategoryCode, javax.swing.GroupLayout.PREFERRED_SIZE, 25, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(jLabel3)
                        .addComponent(txtSubcategoryName, javax.swing.GroupLayout.PREFERRED_SIZE, 25, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addComponent(lblNameSearch))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel2)
                    .addComponent(cmbCategory, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel6)
                    .addComponent(cmbSubCategoryType, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel4)
                    .addComponent(txtRemark, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(cbxIsActive)
                    .addComponent(jLabel5))
                .addGap(26, 26, 26)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(lblClose, javax.swing.GroupLayout.PREFERRED_SIZE, 25, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(lblUpdate, javax.swing.GroupLayout.PREFERRED_SIZE, 25, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(lblView, javax.swing.GroupLayout.PREFERRED_SIZE, 25, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap())
        );

        layout.linkSize(javax.swing.SwingConstants.VERTICAL, new java.awt.Component[] {cbxIsActive, cmbCategory, cmbSubCategoryType, jLabel1, jLabel2, jLabel3, jLabel4, jLabel5, jLabel6, lblCodeSearch, lblNameSearch, txtRemark, txtSubcategoryCode, txtSubcategoryName});

        layout.linkSize(javax.swing.SwingConstants.VERTICAL, new java.awt.Component[] {lblClose, lblUpdate, lblView});

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void lblCodeSearchMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lblCodeSearchMouseClicked
        String subCategoryCode = txtSubcategoryCode.getText().trim();

        List subCategories = getSubCategoryByCode(subCategoryCode, true);
        if (!subCategories.isEmpty()) {
            SubCategoryView subCategoryView = new SubCategoryView(subCategories, this);
            MainFrame.desktopPane.add(subCategoryView);
            subCategoryView.setVisible(true);
        }
    }//GEN-LAST:event_lblCodeSearchMouseClicked

    private void lblCodeSearchMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lblCodeSearchMouseEntered
        LableFunctions.changeBackgroundColor(evt.getSource(), SystemData.MOUSE_ENTER_COLOR);
    }//GEN-LAST:event_lblCodeSearchMouseEntered

    private void lblCodeSearchMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lblCodeSearchMouseExited
        LableFunctions.changeBackgroundColor(evt.getSource(), SystemData.MOUSE_EXIT_COLOR);
    }//GEN-LAST:event_lblCodeSearchMouseExited

    private void lblNameSearchMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lblNameSearchMouseClicked
        String subCategoryName = txtSubcategoryName.getText().trim();
        List subCategories = getSubCategoryByName(subCategoryName, true);

        if (subCategories.size() > 0) {
            SubCategoryView subCategoryView = new SubCategoryView(subCategories, this);
            MainFrame.desktopPane.add(subCategoryView);
            subCategoryView.setVisible(true);
        }
    }//GEN-LAST:event_lblNameSearchMouseClicked

    private void lblNameSearchMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lblNameSearchMouseEntered
        LableFunctions.changeBackgroundColor(evt.getSource(), SystemData.MOUSE_ENTER_COLOR);
    }//GEN-LAST:event_lblNameSearchMouseEntered

    private void lblNameSearchMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lblNameSearchMouseExited
        LableFunctions.changeBackgroundColor(evt.getSource(), SystemData.MOUSE_EXIT_COLOR);
    }//GEN-LAST:event_lblNameSearchMouseExited

    private void lblCloseMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lblCloseMouseClicked
        int selectedOption = JOptionPane.showConfirmDialog(this, "Are you sure?", "Sure", JOptionPane.YES_NO_OPTION);
        if (selectedOption == JOptionPane.YES_OPTION) {
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
        String subCategoryCode = txtSubcategoryCode.getText().toUpperCase().trim();
        String subCategoryName = txtSubcategoryName.getText().toUpperCase().trim();
        String category = ((String) cmbCategory.getSelectedItem()).trim();
        String type = ((String) cmbSubCategoryType.getSelectedItem()).trim();
        String remark = txtRemark.getText().toUpperCase().trim();
        boolean isActivated = cbxIsActive.isSelected();

        if (subCategoryCode.isEmpty()) {
            List subCategories = this.getSubCategoryByName(subCategoryName, false);
            if (subCategories.size() > 0) {
                JOptionPane.showMessageDialog(this, "Item name already exists.", "Exist", JOptionPane.INFORMATION_MESSAGE);
            } else {
                session.getTransaction().commit();
                session.close();
                if (category.equalsIgnoreCase(SystemData.COMBO_DEFAULT) || type.equalsIgnoreCase(SystemData.COMBO_DEFAULT)) {
                    JOptionPane.showMessageDialog(this, "Please select a valid category and type", "Invalid", JOptionPane.INFORMATION_MESSAGE);
                } else {
                    this.createNewSubCategory(subCategoryName, remark, isActivated, this.categoryMap.get(category.split("-")[0].trim()), 
                            this.subCategoryTypeMap.get(type.split("-")[0].trim()));
                }
            }
        } else {
            List subCategories = this.getSubCategoryByCode(subCategoryCode, false);
            if (subCategories.isEmpty()) {
                int option = JOptionPane.showConfirmDialog(this, "Code does not exist. Create new?", "New", JOptionPane.YES_NO_OPTION);
                if (option == JOptionPane.YES_OPTION) {
                    session.getTransaction().commit();
                    session.close();
                    if (category.equalsIgnoreCase(SystemData.COMBO_DEFAULT)) {
                        JOptionPane.showMessageDialog(this, "Please select a valid category", "Invalid", JOptionPane.INFORMATION_MESSAGE);
                    } else {
                        this.createNewSubCategory(subCategoryName, remark, isActivated, this.categoryMap.get(category.split("-")[0].trim()), 
                            this.subCategoryTypeMap.get(type.split("-")[0].trim()));
                    }
                }
            } else {
                int option = JOptionPane.showConfirmDialog(this, "Do you want to update?", "Update", JOptionPane.YES_NO_OPTION);
                if (option == JOptionPane.YES_OPTION) {
                    if (category.equalsIgnoreCase(SystemData.COMBO_DEFAULT) || type.equalsIgnoreCase(SystemData.COMBO_DEFAULT)) {
                        JOptionPane.showMessageDialog(this, "Please select a valid category and type", "Invalid", JOptionPane.INFORMATION_MESSAGE);
                    } else {
                        SubCategory subCategory = new SubCategory(subCategoryCode);
                        subCategory.setSubCategoryName(subCategoryName);
                        subCategory.setCategory(this.categoryMap.get(category.split("-")[0].trim()));
                        subCategory.setSubCategoryType(this.subCategoryTypeMap.get(type.split("-")[0].trim()));
                        subCategory.setRemarks(remark);
                        subCategory.setIsActive(isActivated ? 1 : 0);
                        subCategory.setModifiedDate(new Date());
                        subCategory.setModifiedTime(new Date());
                        subCategory.setModifiedUser(MainFrame.user.getUserId());
                        subCategory.setRemarks(remark);
                        session.saveOrUpdate(subCategory);

                        session.getTransaction().commit();
                        session.close();

                        JOptionPane.showMessageDialog(this, "Updated successfully", "Success", JOptionPane.INFORMATION_MESSAGE);
                        this.resetFrame();
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

        Query query = session.createQuery("from Category c order by c.categoryCode");
        List list = query.list();
        if (!list.isEmpty()) {
            for (Object object : list) {
                if (object instanceof com.servicemaster.entities.Category) {
                    Category category = (Category) object;
                    String categoryName = category.getCategoryName();
                    String catecoryCode = category.getCategoryCode();
                    cmbCategory.addItem(catecoryCode + "-" + categoryName);
                    this.categoryMap.put(catecoryCode, category);
                }
            }
        }

        query = session.createQuery("from SubCategoryType s order by s.subCategoryTypeCode");
        list = query.list();
        if (!list.isEmpty()) {
            for (Object object : list) {
                if (object instanceof com.servicemaster.entities.SubCategoryType) {
                    SubCategoryType categoryType = (SubCategoryType) object;
                    String typeCode = categoryType.getSubCategoryTypeCode();
                    String typeName = categoryType.getSubCategoryTypeName();
                    cmbSubCategoryType.addItem(typeCode + "-" + typeName);
                    this.subCategoryTypeMap.put(typeCode, categoryType);
                }
            }
        }

        session.getTransaction().commit();
        session.close();
    }//GEN-LAST:event_formInternalFrameOpened

    public void setCbxIsActive(boolean isActive) {
        this.cbxIsActive.setSelected(isActive);
    }

    public void setTxtRemark(String remark) {
        this.txtRemark.setText(remark);
    }

    public void setTxtSubcategoryCode(String subCategoryCode) {
        this.txtSubcategoryCode.setText(subCategoryCode);
    }

    public void setTxtSubcategoryName(String subCategoryName) {
        this.txtSubcategoryName.setText(subCategoryName);
    }

    public void setCmbCategory(String category) {
        Category cat = this.categoryMap.get(category);
        this.cmbCategory.setSelectedItem(cat.getCategoryCode()+"-"+cat.getCategoryName());
    }
    
    public void setCmbSubCategoryType(String subCategoryType){
        SubCategoryType categoryType = this.subCategoryTypeMap.get(subCategoryType);
        this.cmbSubCategoryType.setSelectedItem(categoryType.getSubCategoryTypeCode()+"-"+categoryType.getSubCategoryTypeName());
    }
    
    public void setTxtCodeEditable(boolean editable) {
        txtSubcategoryCode.setEditable(editable);
    }

    private List getSubCategoryByCode(String subCategoryCode, boolean like) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        Query query;
        if (like) {
            query = session.createQuery("from SubCategory s join fetch s.subCategoryType where s.subCategoryCode like :code");
            query.setParameter("code", "%" + subCategoryCode + "%");
        } else {
            query = session.createQuery("from SubCategory s join fetch s.subCategoryType where s.subCategoryCode = :code");
            query.setParameter("code", subCategoryCode);
        }
        List list = query.list();
        session.getTransaction().commit();
        session.close();
        return list;
    }

    private List getSubCategoryByName(String subCategoryName, boolean like) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        Query query;
        if (like) {
            query = session.createQuery("from SubCategory s join fetch s.subCategoryType where s.subCategoryName like :name");
            query.setParameter("name", "%" + subCategoryName + "%");
        } else {
            query = session.createQuery("from SubCategory s join fetch s.subCategoryType where s.subCategoryName = :name");
            query.setParameter("name", subCategoryName);
        }
        List list = query.list();
        session.getTransaction().commit();
        session.close();
        return list;
    }

    private void resetFrame() {
        txtSubcategoryCode.setText("");
        txtSubcategoryName.setText("");
        txtRemark.setText("");
        cbxIsActive.setSelected(false);
        txtSubcategoryCode.setEditable(true);
        cmbCategory.setSelectedIndex(0);
        cmbSubCategoryType.setSelectedIndex(0);
    }

    private void createNewSubCategory(String subCategoryName, String remark, boolean isActivated,
            com.servicemaster.entities.Category category, SubCategoryType type) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        String catCode;
        Query query = session.createQuery("from KeyTable k where k.keyCode = :code");
        query.setParameter("code", "SUB");
        List keyList = query.list();
        if (keyList.size() > 0) {
            KeyTable keyTable = (KeyTable) keyList.get(0);
            Integer keyNumber = keyTable.getKeyNumber();
            keyTable.setKeyNumber(keyNumber + 1);
            keyTable.setModifiedDate(new Date());
            keyTable.setModifiedTime(new Date());
            keyTable.setModifiedUser(MainFrame.user.getUserId());
            session.saveOrUpdate(keyTable);
            catCode = "SUB" + keyNumber;
        } else {
            KeyTable keyTable = new KeyTable();
            keyTable.setKeyCode("SUB");
            keyTable.setKeyNumber(1001);
            keyTable.setKeyRemark("Sub Category");
            keyTable.setCreatedDate(new Date());
            keyTable.setCreatedTime(new Date());
            keyTable.setCreatedUser(MainFrame.user.getUserId());
            session.saveOrUpdate(keyTable);
            catCode = "SUB1000";
        }

        SubCategory subCategory = new SubCategory();
        subCategory.setSubCategoryCode(catCode);
        subCategory.setSubCategoryName(subCategoryName);
        subCategory.setCategory(category);
        subCategory.setSubCategoryType(type);
        subCategory.setRemarks(remark);
        subCategory.setIsActive(isActivated ? 1 : 0);
        subCategory.setCreatedDate(new Date());
        subCategory.setCreatedTime(new Date());
        subCategory.setCreatedUser(MainFrame.user.getUserId());
        session.saveOrUpdate(subCategory);

        session.getTransaction().commit();
        session.close();

        JOptionPane.showMessageDialog(this, "Updated successfully", "Success", JOptionPane.INFORMATION_MESSAGE);
        this.resetFrame();
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JCheckBox cbxIsActive;
    private javax.swing.JComboBox<String> cmbCategory;
    private javax.swing.JComboBox<String> cmbSubCategoryType;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel lblClose;
    private javax.swing.JLabel lblCodeSearch;
    private javax.swing.JLabel lblNameSearch;
    private javax.swing.JLabel lblUpdate;
    private javax.swing.JLabel lblView;
    private javax.swing.JTextField txtRemark;
    private javax.swing.JTextField txtSubcategoryCode;
    private javax.swing.JTextField txtSubcategoryName;
    // End of variables declaration//GEN-END:variables
    private final TreeMap<String, Category> categoryMap = new TreeMap<>();
    private final TreeMap<String, SubCategoryType> subCategoryTypeMap = new TreeMap<>();
}
