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
import com.servicemaster.functions.KeyCodeFunctions;
import com.servicemaster.guiFunctions.ButtonFunctions;
import com.servicemaster.models.Category;
import com.servicemaster.utils.HibernateUtil;
import com.servicemaster.views.CategoryView;
import java.util.Date;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author Ruwan Madawala
 */
public class CategoryFrame extends javax.swing.JInternalFrame {

    /**
     * Creates new form Category
     */
    public CategoryFrame() {
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
        jLabel2 = new javax.swing.JLabel();
        txtCategoryCode = new javax.swing.JTextField();
        txtCategoryName = new javax.swing.JTextField();
        jLabel3 = new javax.swing.JLabel();
        txtRemark = new javax.swing.JTextField();
        jLabel4 = new javax.swing.JLabel();
        cbxIsActive = new javax.swing.JCheckBox();
        btnReset = new javax.swing.JButton();
        btnSave = new javax.swing.JButton();
        btnClose = new javax.swing.JButton();
        btnCodeSerach = new javax.swing.JButton();
        btnNameSearch = new javax.swing.JButton();

        setTitle("Category");

        jLabel1.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        jLabel1.setText("Category code :");

        jLabel2.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        jLabel2.setText("Category name :");

        txtCategoryCode.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N

        txtCategoryName.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N

        jLabel3.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        jLabel3.setText("Remark :");

        txtRemark.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N

        jLabel4.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        jLabel4.setText("Is Active :");

        cbxIsActive.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        cbxIsActive.setSelected(true);

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
                        .addComponent(jLabel3)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(txtRemark))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                        .addGap(0, 0, Short.MAX_VALUE)
                        .addComponent(btnReset, javax.swing.GroupLayout.PREFERRED_SIZE, 75, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(btnSave, javax.swing.GroupLayout.PREFERRED_SIZE, 75, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(btnClose, javax.swing.GroupLayout.PREFERRED_SIZE, 75, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(jLabel4)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                .addComponent(cbxIsActive))
                            .addGroup(layout.createSequentialGroup()
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addGroup(layout.createSequentialGroup()
                                        .addComponent(jLabel1)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                        .addComponent(txtCategoryCode, javax.swing.GroupLayout.PREFERRED_SIZE, 234, javax.swing.GroupLayout.PREFERRED_SIZE))
                                    .addGroup(layout.createSequentialGroup()
                                        .addComponent(jLabel2)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                        .addComponent(txtCategoryName, javax.swing.GroupLayout.PREFERRED_SIZE, 234, javax.swing.GroupLayout.PREFERRED_SIZE)))
                                .addGap(4, 4, 4)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(btnCodeSerach, javax.swing.GroupLayout.PREFERRED_SIZE, 50, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(btnNameSearch, javax.swing.GroupLayout.PREFERRED_SIZE, 50, javax.swing.GroupLayout.PREFERRED_SIZE))))
                        .addGap(0, 0, Short.MAX_VALUE)))
                .addContainerGap())
        );

        layout.linkSize(javax.swing.SwingConstants.HORIZONTAL, new java.awt.Component[] {jLabel1, jLabel2, jLabel3, jLabel4});

        layout.linkSize(javax.swing.SwingConstants.HORIZONTAL, new java.awt.Component[] {txtCategoryCode, txtCategoryName});

        layout.linkSize(javax.swing.SwingConstants.HORIZONTAL, new java.awt.Component[] {btnClose, btnReset, btnSave});

        layout.linkSize(javax.swing.SwingConstants.HORIZONTAL, new java.awt.Component[] {btnCodeSerach, btnNameSearch});

        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(jLabel1)
                        .addComponent(txtCategoryCode, javax.swing.GroupLayout.PREFERRED_SIZE, 25, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addComponent(btnCodeSerach, javax.swing.GroupLayout.PREFERRED_SIZE, 25, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(jLabel2)
                        .addComponent(txtCategoryName, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addComponent(btnNameSearch, javax.swing.GroupLayout.PREFERRED_SIZE, 25, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel3)
                    .addComponent(txtRemark, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel4)
                    .addComponent(cbxIsActive))
                .addGap(50, 50, 50)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(btnSave, javax.swing.GroupLayout.PREFERRED_SIZE, 25, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(btnClose, javax.swing.GroupLayout.PREFERRED_SIZE, 25, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(btnReset, javax.swing.GroupLayout.PREFERRED_SIZE, 25, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap())
        );

        layout.linkSize(javax.swing.SwingConstants.VERTICAL, new java.awt.Component[] {cbxIsActive, jLabel1, jLabel2, jLabel3, jLabel4, txtCategoryCode, txtCategoryName, txtRemark});

        layout.linkSize(javax.swing.SwingConstants.VERTICAL, new java.awt.Component[] {btnClose, btnReset, btnSave});

        layout.linkSize(javax.swing.SwingConstants.VERTICAL, new java.awt.Component[] {btnCodeSerach, btnNameSearch});

        pack();
    }// </editor-fold>//GEN-END:initComponents

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
        if (txtCategoryCode.getText().toUpperCase().trim().isEmpty()) {
            List categoryByName = this.getCategoryByName(txtCategoryName.getText().toUpperCase().trim(), false);
            if (categoryByName.size() > 0) {
                InformationDialog.showMessageBox("Item name already exists.", "Exist", this);
            } else {
                KeyCodeFunctions keyCodeFunctions = new KeyCodeFunctions();
                this.saveOrUpdateCategory(keyCodeFunctions.getKey("CAT", "Category"), false);
            }
        } else {
            List categoryByCode = this.getCategoryByCode(txtCategoryCode.getText().toUpperCase().trim(), false);
            if (categoryByCode.isEmpty()) {
                InformationDialog.showMessageBox("Invalid Category code. Please try again", "Invalid", this);
            } else {
                ConfirmationDialog.showMessageBox("Do you want to update?", "Update", this);
                if (ConfirmationDialog.option == ConfirmationDialog.YES_OPTION) {
                    this.saveOrUpdateCategory(txtCategoryCode.getText().toUpperCase().trim(), true);
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

    private void btnCodeSerachMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnCodeSerachMouseEntered
        ButtonFunctions.changeBackgroundColor(evt.getSource(), SystemData.MOUSE_ENTER_COLOR);
    }//GEN-LAST:event_btnCodeSerachMouseEntered

    private void btnCodeSerachMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnCodeSerachMouseExited
        ButtonFunctions.changeBackgroundColor(evt.getSource(), SystemData.MOUSE_EXIT_COLOR);
    }//GEN-LAST:event_btnCodeSerachMouseExited

    private void btnCodeSerachActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnCodeSerachActionPerformed
        String categoryCode = txtCategoryCode.getText().trim();
        List categories = getCategoryByCode(categoryCode, true);

        if (!categories.isEmpty()) {
            CategoryView categoryView = new CategoryView(categories, this);
            MainFrame.desktopPane.add(categoryView);
            categoryView.setVisible(true);
        }
    }//GEN-LAST:event_btnCodeSerachActionPerformed

    private void btnNameSearchMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnNameSearchMouseEntered
        ButtonFunctions.changeBackgroundColor(evt.getSource(), SystemData.MOUSE_ENTER_COLOR);
    }//GEN-LAST:event_btnNameSearchMouseEntered

    private void btnNameSearchMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnNameSearchMouseExited
        ButtonFunctions.changeBackgroundColor(evt.getSource(), SystemData.MOUSE_EXIT_COLOR);
    }//GEN-LAST:event_btnNameSearchMouseExited

    private void btnNameSearchActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnNameSearchActionPerformed
        String categoryName = txtCategoryName.getText().trim();
        List categories = getCategoryByName(categoryName, true);

        if (categories.size() > 0) {
            CategoryView categoryView = new CategoryView(categories, this);
            MainFrame.desktopPane.add(categoryView);
            categoryView.setVisible(true);
        }
    }//GEN-LAST:event_btnNameSearchActionPerformed

    private void saveOrUpdateCategory(String strCategoryCode, boolean bUpdate) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();

        Category category = new Category();
        category.setCategoryCode(strCategoryCode);
        category.setCategoryName(txtCategoryName.getText().trim().toUpperCase());
        category.setRemarks(txtRemark.getText().trim());
        category.setIsActive(cbxIsActive.isSelected() ? 1 : 0);
        if (bUpdate) {
            category.setModifiedDate(new Date());
            category.setModifiedTime(new Date());
            category.setModifiedUser(MainFrame.user.getUserId());
        } else {
            category.setCreatedDate(new Date());
            category.setCreatedTime(new Date());
            category.setCreatedUser(MainFrame.user.getUserId());
        }
        session.saveOrUpdate(category);

        session.getTransaction().commit();
        session.close();

        if (bUpdate) {
            InformationDialog.showMessageBox("Successfully updated", "Success", this);
        } else {
            InformationDialog.showMessageBox("New entry created successfully", "Success", this);
        }
        this.clearAll();
    }

    private List getCategoryByCode(String categoryCode, boolean like) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        Query query;
        if (like) {
            query = session.createQuery("from Category c where c.categoryCode like :code");
            query.setParameter("code", "%" + categoryCode + "%");
        } else {
            query = session.createQuery("from Category c where c.categoryCode = :code");
            query.setParameter("code", categoryCode);
        }
        List list = query.list();
        session.getTransaction().commit();
        session.close();
        return list;
    }

    private List getCategoryByName(String categoryName, boolean like) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        Query query;
        if (like) {
            query = session.createQuery("from Category c where c.categoryName like :name");
            query.setParameter("name", "%" + categoryName + "%");
        } else {
            query = session.createQuery("from Category c where c.categoryName = :name");
            query.setParameter("name", categoryName);
        }
        List list = query.list();
        session.getTransaction().commit();
        session.close();
        return list;
    }

    private void clearAll() {
        txtCategoryCode.setText("");
        txtCategoryName.setText("");
        txtRemark.setText("");
        cbxIsActive.setSelected(false);
        txtCategoryCode.setEditable(true);
    }

    public void setCategoryCode(String categoryCode) {
        this.txtCategoryCode.setText(categoryCode);
    }

    public void setCategoryName(String categoryName) {
        this.txtCategoryName.setText(categoryName);
    }

    public void setRemark(String remark) {
        this.txtRemark.setText(remark);
    }

    public void setIsActive(boolean IsActive) {
        this.cbxIsActive.setSelected(IsActive);
    }

    public void setCategoryCodeEditable(boolean editable) {
        txtCategoryCode.setEditable(editable);
    }

    public void setBtnSaveText(String text) {
        this.btnSave.setText(text);
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnClose;
    private javax.swing.JButton btnCodeSerach;
    private javax.swing.JButton btnNameSearch;
    private javax.swing.JButton btnReset;
    private javax.swing.JButton btnSave;
    private javax.swing.JCheckBox cbxIsActive;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JTextField txtCategoryCode;
    private javax.swing.JTextField txtCategoryName;
    private javax.swing.JTextField txtRemark;
    // End of variables declaration//GEN-END:variables
}
