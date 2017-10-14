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
import com.servicemaster.functions.AutoCompletion;
import com.servicemaster.guiFunctions.ButtonFunctions;
import com.servicemaster.models.Invoice;
import com.servicemaster.models.Item;
import com.servicemaster.models.Sale;
import com.servicemaster.models.SaleItem;
import com.servicemaster.models.SaleItemStatus;
import com.servicemaster.utils.HibernateUtil;
import java.awt.event.KeyEvent;
import java.awt.event.MouseEvent;
import java.util.Date;
import java.util.List;
import javax.swing.SwingUtilities;
import javax.swing.table.DefaultTableModel;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author RuwanM
 */
public class ItemReturnFrame extends javax.swing.JInternalFrame {

    /**
     * Creates new form ItemReturnFrame
     */
    public ItemReturnFrame() {
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

        tblItemsPopup = new javax.swing.JPopupMenu();
        miCancel = new javax.swing.JMenuItem();
        jLabel1 = new javax.swing.JLabel();
        cmbInvoices = new javax.swing.JComboBox<>();
        itemDetailsPanel = new javax.swing.JPanel();
        jScrollPane1 = new javax.swing.JScrollPane();
        tblServiceItems = new javax.swing.JTable();
        btnLoad = new javax.swing.JButton();
        jPanel1 = new javax.swing.JPanel();
        jLabel2 = new javax.swing.JLabel();
        txtItemName = new javax.swing.JTextField();
        jLabel3 = new javax.swing.JLabel();
        txtQuantity = new javax.swing.JFormattedTextField();
        jLabel4 = new javax.swing.JLabel();
        txtReason = new javax.swing.JTextField();
        btnUpdate = new javax.swing.JButton();
        btnReset = new javax.swing.JButton();
        btnClose = new javax.swing.JButton();

        miCancel.setText("Cancel");
        miCancel.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                miCancelActionPerformed(evt);
            }
        });
        tblItemsPopup.add(miCancel);

        setClosable(true);
        setTitle("Item Return");
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
        jLabel1.setText("Invoice No :");

        cmbInvoices.setEditable(true);
        cmbInvoices.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N

        itemDetailsPanel.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 153, 0)), "Items", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Tahoma", 0, 11), new java.awt.Color(0, 153, 0))); // NOI18N

        tblServiceItems.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        tblServiceItems.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "Item Code", "Item Name", "Quantity", "Total Amount", "Status"
            }
        ) {
            Class[] types = new Class [] {
                java.lang.String.class, java.lang.String.class, java.lang.Float.class, java.lang.Float.class, java.lang.String.class
            };
            boolean[] canEdit = new boolean [] {
                false, false, false, false, false
            };

            public Class getColumnClass(int columnIndex) {
                return types [columnIndex];
            }

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        tblServiceItems.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                tblServiceItemsMouseClicked(evt);
            }
        });
        tblServiceItems.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                tblServiceItemsKeyPressed(evt);
            }
        });
        jScrollPane1.setViewportView(tblServiceItems);
        if (tblServiceItems.getColumnModel().getColumnCount() > 0) {
            tblServiceItems.getColumnModel().getColumn(0).setResizable(false);
            tblServiceItems.getColumnModel().getColumn(1).setResizable(false);
            tblServiceItems.getColumnModel().getColumn(1).setPreferredWidth(250);
            tblServiceItems.getColumnModel().getColumn(2).setResizable(false);
            tblServiceItems.getColumnModel().getColumn(3).setResizable(false);
        }

        javax.swing.GroupLayout itemDetailsPanelLayout = new javax.swing.GroupLayout(itemDetailsPanel);
        itemDetailsPanel.setLayout(itemDetailsPanelLayout);
        itemDetailsPanelLayout.setHorizontalGroup(
            itemDetailsPanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jScrollPane1)
        );
        itemDetailsPanelLayout.setVerticalGroup(
            itemDetailsPanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 163, javax.swing.GroupLayout.PREFERRED_SIZE)
        );

        btnLoad.setBackground(new java.awt.Color(150, 255, 150));
        btnLoad.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        btnLoad.setText("Load");
        btnLoad.setBorder(javax.swing.BorderFactory.createMatteBorder(1, 1, 1, 1, new java.awt.Color(50, 255, 50)));
        btnLoad.setContentAreaFilled(false);
        btnLoad.setOpaque(true);
        btnLoad.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                btnLoadMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                btnLoadMouseExited(evt);
            }
        });
        btnLoad.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnLoadActionPerformed(evt);
            }
        });

        jPanel1.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 153, 0)), "Item Details", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Tahoma", 0, 11), new java.awt.Color(0, 153, 0))); // NOI18N

        jLabel2.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        jLabel2.setText("Item Name :");

        txtItemName.setEditable(false);
        txtItemName.setBackground(new java.awt.Color(255, 255, 255));
        txtItemName.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        txtItemName.setNextFocusableComponent(txtQuantity);

        jLabel3.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        jLabel3.setText("Quantity :");

        txtQuantity.setHorizontalAlignment(javax.swing.JTextField.TRAILING);
        txtQuantity.setText("0.00");
        txtQuantity.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        txtQuantity.setNextFocusableComponent(txtReason);
        txtQuantity.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                txtQuantityFocusGained(evt);
            }
        });
        txtQuantity.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                txtQuantityKeyPressed(evt);
            }
        });

        jLabel4.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        jLabel4.setText("Retrun Reason :");

        txtReason.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N

        btnUpdate.setBackground(new java.awt.Color(150, 255, 150));
        btnUpdate.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        btnUpdate.setText("Update");
        btnUpdate.setBorder(javax.swing.BorderFactory.createMatteBorder(1, 1, 1, 1, new java.awt.Color(50, 255, 50)));
        btnUpdate.setContentAreaFilled(false);
        btnUpdate.setOpaque(true);
        btnUpdate.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                btnUpdateMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                btnUpdateMouseExited(evt);
            }
        });
        btnUpdate.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnUpdateActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel2)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(txtItemName, javax.swing.GroupLayout.PREFERRED_SIZE, 150, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(jLabel3)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(txtQuantity, javax.swing.GroupLayout.PREFERRED_SIZE, 50, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(jLabel4)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(txtReason, javax.swing.GroupLayout.DEFAULT_SIZE, 218, Short.MAX_VALUE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(btnUpdate, javax.swing.GroupLayout.PREFERRED_SIZE, 75, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel2)
                    .addComponent(txtItemName, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel3)
                    .addComponent(txtQuantity, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel4)
                    .addComponent(txtReason, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(btnUpdate, javax.swing.GroupLayout.PREFERRED_SIZE, 25, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(5, 5, 5))
        );

        jPanel1Layout.linkSize(javax.swing.SwingConstants.VERTICAL, new java.awt.Component[] {btnUpdate, jLabel2, jLabel3, jLabel4, txtItemName, txtQuantity, txtReason});

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

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel1)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(cmbInvoices, javax.swing.GroupLayout.PREFERRED_SIZE, 150, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(4, 4, 4)
                .addComponent(btnLoad, javax.swing.GroupLayout.PREFERRED_SIZE, 75, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
            .addComponent(itemDetailsPanel, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(btnReset, javax.swing.GroupLayout.PREFERRED_SIZE, 75, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(btnClose, javax.swing.GroupLayout.PREFERRED_SIZE, 75, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel1)
                    .addComponent(cmbInvoices, javax.swing.GroupLayout.PREFERRED_SIZE, 25, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(btnLoad, javax.swing.GroupLayout.PREFERRED_SIZE, 25, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(itemDetailsPanel, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(btnClose, javax.swing.GroupLayout.PREFERRED_SIZE, 25, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(btnReset, javax.swing.GroupLayout.PREFERRED_SIZE, 25, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        layout.linkSize(javax.swing.SwingConstants.VERTICAL, new java.awt.Component[] {cmbInvoices, jLabel1});

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btnLoadMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnLoadMouseEntered
        ButtonFunctions.changeBackgroundColor(evt.getSource(), SystemData.MOUSE_ENTER_COLOR);
    }//GEN-LAST:event_btnLoadMouseEntered

    private void btnLoadMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnLoadMouseExited
        ButtonFunctions.changeBackgroundColor(evt.getSource(), SystemData.MOUSE_EXIT_COLOR);
    }//GEN-LAST:event_btnLoadMouseExited

    private void btnLoadActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnLoadActionPerformed
        String strInvoiceNo = cmbInvoices.getSelectedItem().toString();
        if (strInvoiceNo.isEmpty()) {
            InformationDialog.showMessageBox("Please select a valid invoice no.", "Invalid", this);
        } else {
            this.loadServicHasItems(strInvoiceNo);
        }
    }//GEN-LAST:event_btnLoadActionPerformed

    private void loadServicHasItems(String strInvoiceNumber) {
        Session session = HibernateUtil.getSessionFactory().openSession();

        Invoice invoice = (Invoice) session
                .createCriteria(Invoice.class)
                .add(Restrictions.eqOrIsNull("invoiceNumber", strInvoiceNumber))
                .uniqueResult();

        if (invoice != null) {
            List<SaleItem> saleItems = session
                    .createCriteria(SaleItem.class)
                    .createAlias("item", "item")
                    .add(Restrictions.eq("sale", invoice.getSale()))
                    .add(Restrictions.eq("item.isPhysical", 1))
                    .list();

            if (!saleItems.isEmpty()) {
                DefaultTableModel tableModel = (DefaultTableModel) tblServiceItems.getModel();
                tableModel.setRowCount(0);
                for (SaleItem saleItem : saleItems) {
                    String itemCode = saleItem.getItem().getItemCode();
                    String itemName = saleItem.getItem().getItemName();
                    float quantity = saleItem.getQuantity();
                    float totalAmount = saleItem.getSubTotal();
                    SaleItemStatus saleItemStatus = (SaleItemStatus) session.load(SaleItemStatus.class, saleItem.getSaleItemStatus().getItemStatusId());
                    String itemStatus = saleItemStatus.getItemStatusDescription();

                    tableModel.addRow(new Object[]{itemCode, itemName, quantity, totalAmount, itemStatus});
                }
            }
        }

        tblServiceItems.requestFocus();
    }

    private void formInternalFrameOpened(javax.swing.event.InternalFrameEvent evt) {//GEN-FIRST:event_formInternalFrameOpened
        Session session = HibernateUtil.getSessionFactory().openSession();
        List<SaleItem> saleItems = session
                .createCriteria(SaleItem.class)
                .createAlias("sale", "sale")
                .createAlias("item", "item")
                .add(Restrictions.eq("item.isPhysical", 1))
                .list();

        if (!saleItems.isEmpty()) {
            cmbInvoices.removeAllItems();
            cmbInvoices.addItem("");
            for (SaleItem saleItem : saleItems) {
                Invoice invoice = (Invoice) session
                        .createCriteria(Invoice.class)
                        .add(Restrictions.eq("sale", saleItem.getSale()))
                        .uniqueResult();
                if (invoice != null) {
                    cmbInvoices.addItem(invoice.getInvoiceNumber());
                }
            }
        }
        session.close();

        AutoCompletion.enable(cmbInvoices, btnLoad);
    }//GEN-LAST:event_formInternalFrameOpened

    private void btnUpdateMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnUpdateMouseEntered
        ButtonFunctions.changeBackgroundColor(evt.getSource(), SystemData.MOUSE_ENTER_COLOR);
    }//GEN-LAST:event_btnUpdateMouseEntered

    private void btnUpdateMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnUpdateMouseExited
        ButtonFunctions.changeBackgroundColor(evt.getSource(), SystemData.MOUSE_EXIT_COLOR);
    }//GEN-LAST:event_btnUpdateMouseExited

    private void btnUpdateActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnUpdateActionPerformed
        if (this.validateInputs()) {
            Session session = HibernateUtil.getSessionFactory().openSession();
            Transaction transaction = session.beginTransaction();

            String strInvoiceNumber = cmbInvoices.getSelectedItem().toString();
            String strItemName = txtItemName.getText().trim();
            float fCanceledQty = Float.parseFloat(txtQuantity.getText().trim());
            String strReason = txtReason.getText().trim();

            Date date = new Date();

            Invoice invoice = (Invoice) session
                    .createCriteria(Invoice.class)
                    .add(Restrictions.eq("invoiceNumber", strInvoiceNumber))
                    .uniqueResult();

            SaleItem saleItem = (SaleItem) session
                    .createCriteria(SaleItem.class)
                    .createAlias("item", "item")
                    .add(Restrictions.eq("sale", invoice.getSale()))
                    .add(Restrictions.eq("item.itemName", strItemName))
                    .uniqueResult();

            SaleItemStatus saleItemStatus = (SaleItemStatus) session
                    .createCriteria(SaleItemStatus.class)
                    .add(Restrictions.eq("itemStatusId", 2))
                    .uniqueResult();

            float fExtQty = saleItem.getQuantity();
            float fUnitPrice = saleItem.getUnitPrice();
            float fDiscount = saleItem.getDiscount();

            if (fExtQty == fCanceledQty) {
                saleItem.setRemark(strReason);
                saleItem.setSaleItemStatus(saleItemStatus);
                saleItem.setModifiedDate(date);
                saleItem.setModifiedTime(date);
                saleItem.setModifiedUser(MainFrame.user.getUserId());

                session.saveOrUpdate(saleItem);
            } else if (fExtQty > fCanceledQty) {
                float fRemains = fExtQty - fCanceledQty;
                float fSubTotal = fUnitPrice * fRemains;
                float fToral = fSubTotal - fDiscount;

                saleItem.setQuantity(fRemains);
                saleItem.setSubTotal(fSubTotal);
                saleItem.setTotal(fToral);
                saleItem.setModifiedDate(date);
                saleItem.setModifiedTime(date);
                saleItem.setModifiedUser(MainFrame.user.getUserId());

                session.saveOrUpdate(saleItem);

                Item item = (Item) session
                        .createCriteria(Item.class)
                        .add(Restrictions.eq("itemName", strItemName))
                        .uniqueResult();

                Sale sale = (Sale) session
                        .createCriteria(Sale.class)
                        .add(Restrictions.eq("saleCode", invoice.getSale().getSaleCode()))
                        .uniqueResult();
                
                float fSaleSubTotal = sale.getSubTotal();
                float fSaleTotal = sale.getGrandTotal();
                
                fSaleSubTotal = fSaleSubTotal - (fUnitPrice * fCanceledQty);
                fSaleTotal = fSaleTotal - (fUnitPrice * fCanceledQty);
                
                sale.setSubTotal(fSaleSubTotal);
                sale.setGrandTotal(fSaleTotal);
                sale.setModifiedDate(date);
                sale.setModifiedTime(date);
                sale.setModifiedUser(MainFrame.user.getUserId());
                
                session.saveOrUpdate(sale);
                
                fSaleSubTotal = fSaleSubTotal - (fUnitPrice * fRemains);
                fSaleTotal = fSaleTotal - (fUnitPrice * fRemains);

                SaleItem canceledSaleItem = new SaleItem();
                canceledSaleItem.setItem(item);
                canceledSaleItem.setSale(sale);
                canceledSaleItem.setDiscount(0.0f);
                canceledSaleItem.setQuantity(fCanceledQty);
                canceledSaleItem.setSaleItemStatus(saleItemStatus);
                canceledSaleItem.setRemark(strReason);
                canceledSaleItem.setSubTotal(fSaleSubTotal);
                canceledSaleItem.setTotal(fSaleTotal);
                canceledSaleItem.setUnitPrice(fRemains);
                canceledSaleItem.setCreatedDate(date);
                canceledSaleItem.setCreatedTime(date);
                canceledSaleItem.setCreatedUser(MainFrame.user.getUserId());
                
                session.saveOrUpdate(canceledSaleItem);
            } else {
                InformationDialog.showMessageBox("Cancel quantity must be less than or equal saled quantity", "Wrong", this);
            }

            transaction.commit();
            session.close();

            InformationDialog.showMessageBox("Updated successfully", "Success", this);

            this.clearAll(false);

            this.loadServicHasItems(strInvoiceNumber);
        } else {
            InformationDialog.showMessageBox("Please select valid item", "Invalid", this);
        }
    }//GEN-LAST:event_btnUpdateActionPerformed

    private void btnResetMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnResetMouseEntered
        ButtonFunctions.changeBackgroundColor(evt.getSource(), SystemData.MOUSE_ENTER_COLOR);
    }//GEN-LAST:event_btnResetMouseEntered

    private void btnResetMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnResetMouseExited
        ButtonFunctions.changeBackgroundColor(evt.getSource(), SystemData.MOUSE_EXIT_COLOR);
    }//GEN-LAST:event_btnResetMouseExited

    private void btnResetActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnResetActionPerformed
        this.clearAll(true);
    }//GEN-LAST:event_btnResetActionPerformed

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

    private void tblServiceItemsMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_tblServiceItemsMouseClicked
        if (evt.getClickCount() == 2) {
            this.cancelSaleItem();
        } else if (evt.getButton() == MouseEvent.BUTTON3) {
            int row = tblServiceItems.rowAtPoint(evt.getPoint());
            int column = tblServiceItems.columnAtPoint(evt.getPoint());
            tblServiceItems.changeSelection(row, column, false, false);
            tblItemsPopup.show(evt.getComponent(), evt.getX(), evt.getY());
        }
    }//GEN-LAST:event_tblServiceItemsMouseClicked

    private void tblServiceItemsKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_tblServiceItemsKeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER) {
            this.cancelSaleItem();
        }
    }//GEN-LAST:event_tblServiceItemsKeyPressed

    private void miCancelActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_miCancelActionPerformed
        this.cancelSaleItem();
    }//GEN-LAST:event_miCancelActionPerformed

    private void txtQuantityKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtQuantityKeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER) {
            txtReason.requestFocus();
        }
    }//GEN-LAST:event_txtQuantityKeyPressed

    private void txtQuantityFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_txtQuantityFocusGained
        SwingUtilities.invokeLater(new Runnable() {
            @Override
            public void run() {
                txtQuantity.selectAll();
            }
        });
    }//GEN-LAST:event_txtQuantityFocusGained

    private void cancelSaleItem() {
        int selectedRow = tblServiceItems.getSelectedRow();
        if (selectedRow != -1) {
            ConfirmationDialog.showMessageBox("Are you sure?", "Sure", this);
            if (ConfirmationDialog.option == ConfirmationDialog.YES_OPTION) {
                DefaultTableModel tableModel = (DefaultTableModel) tblServiceItems.getModel();
                String itemName = tableModel.getValueAt(selectedRow, 1).toString();
                float quantity = Float.parseFloat(tableModel.getValueAt(selectedRow, 2).toString());

                txtItemName.setText(itemName);
                txtQuantity.setText("" + quantity);

                tableModel.removeRow(selectedRow);

                txtQuantity.requestFocus();
            }
        } else {
            InformationDialog.showMessageBox("Please select a valid item", "Invalid", this);
        }
    }

    private void clearAll(boolean resetCmbInvoice) {
        if (resetCmbInvoice) {
            this.cmbInvoices.setSelectedIndex(0);
        }
        ((DefaultTableModel) tblServiceItems.getModel()).setRowCount(0);
        txtItemName.setText("");
        txtQuantity.setText("");
        txtReason.setText("");
    }

    private boolean validateInputs() {
        return !(txtItemName.getText().isEmpty()
                || txtQuantity.getText().isEmpty()
                || txtQuantity.getText().equalsIgnoreCase("0.00")
                || txtReason.getText().isEmpty());
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnClose;
    private javax.swing.JButton btnLoad;
    private javax.swing.JButton btnReset;
    private javax.swing.JButton btnUpdate;
    private javax.swing.JComboBox<String> cmbInvoices;
    private javax.swing.JPanel itemDetailsPanel;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JMenuItem miCancel;
    private javax.swing.JPopupMenu tblItemsPopup;
    private javax.swing.JTable tblServiceItems;
    private javax.swing.JTextField txtItemName;
    private javax.swing.JFormattedTextField txtQuantity;
    private javax.swing.JTextField txtReason;
    // End of variables declaration//GEN-END:variables
}
