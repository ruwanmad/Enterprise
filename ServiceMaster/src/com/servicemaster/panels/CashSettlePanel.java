/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servicemaster.panels;

import com.servicemaster.dialogs.SettlementDialog;
import java.awt.event.KeyEvent;
import javax.swing.JOptionPane;
import javax.swing.SwingUtilities;

/**
 *
 * @author RuwanM
 */
public class CashSettlePanel extends javax.swing.JPanel {

    private final SettlementDialog settlementDialog;
    private final String paymentTypeCode;

    /**
     * Creates new form CashSettlePanel
     *
     * @param settlementDialog
     * @param paymentTypeCode
     */
    public CashSettlePanel(SettlementDialog settlementDialog, String paymentTypeCode) {
        initComponents();
        this.settlementDialog = settlementDialog;
        this.paymentTypeCode = paymentTypeCode;
    }

    public String getPaymentTypeCode() {
        return paymentTypeCode;
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
        txtTotalAmount = new javax.swing.JFormattedTextField();
        jLabel2 = new javax.swing.JLabel();
        txtPaidAmount = new javax.swing.JFormattedTextField();
        jLabel3 = new javax.swing.JLabel();
        txtRemainingBalance = new javax.swing.JFormattedTextField();
        jLabel4 = new javax.swing.JLabel();
        txtNowPaying = new javax.swing.JFormattedTextField();
        jLabel5 = new javax.swing.JLabel();
        txtBalance = new javax.swing.JFormattedTextField();

        addComponentListener(new java.awt.event.ComponentAdapter() {
            public void componentShown(java.awt.event.ComponentEvent evt) {
                formComponentShown(evt);
            }
        });

        jLabel1.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        jLabel1.setText("Total amount :");

        txtTotalAmount.setEditable(false);
        txtTotalAmount.setBackground(new java.awt.Color(255, 255, 255));
        txtTotalAmount.setFormatterFactory(new javax.swing.text.DefaultFormatterFactory(new javax.swing.text.NumberFormatter(new java.text.DecimalFormat("###0.0"))));
        txtTotalAmount.setHorizontalAlignment(javax.swing.JTextField.TRAILING);
        txtTotalAmount.setText("0.0");
        txtTotalAmount.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N

        jLabel2.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        jLabel2.setText("Paid amount :");

        txtPaidAmount.setEditable(false);
        txtPaidAmount.setBackground(new java.awt.Color(255, 255, 255));
        txtPaidAmount.setFormatterFactory(new javax.swing.text.DefaultFormatterFactory(new javax.swing.text.NumberFormatter(new java.text.DecimalFormat("###0.0"))));
        txtPaidAmount.setHorizontalAlignment(javax.swing.JTextField.TRAILING);
        txtPaidAmount.setText("0.0");
        txtPaidAmount.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N

        jLabel3.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        jLabel3.setText("Remaining balance :");

        txtRemainingBalance.setEditable(false);
        txtRemainingBalance.setBackground(new java.awt.Color(255, 255, 255));
        txtRemainingBalance.setFormatterFactory(new javax.swing.text.DefaultFormatterFactory(new javax.swing.text.NumberFormatter(new java.text.DecimalFormat("###0.0"))));
        txtRemainingBalance.setHorizontalAlignment(javax.swing.JTextField.TRAILING);
        txtRemainingBalance.setText("0.0");
        txtRemainingBalance.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N

        jLabel4.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        jLabel4.setText("Now paying :");

        txtNowPaying.setFormatterFactory(new javax.swing.text.DefaultFormatterFactory(new javax.swing.text.NumberFormatter(new java.text.DecimalFormat("###0.0"))));
        txtNowPaying.setHorizontalAlignment(javax.swing.JTextField.TRAILING);
        txtNowPaying.setText("0.0");
        txtNowPaying.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        txtNowPaying.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                txtNowPayingFocusGained(evt);
            }
        });
        txtNowPaying.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                txtNowPayingKeyPressed(evt);
            }
        });

        jLabel5.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        jLabel5.setText("Balance :");

        txtBalance.setEditable(false);
        txtBalance.setBackground(new java.awt.Color(255, 255, 255));
        txtBalance.setFormatterFactory(new javax.swing.text.DefaultFormatterFactory(new javax.swing.text.NumberFormatter(new java.text.DecimalFormat("###0.0"))));
        txtBalance.setHorizontalAlignment(javax.swing.JTextField.TRAILING);
        txtBalance.setText("0.0");
        txtBalance.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel5)
                    .addComponent(jLabel4)
                    .addComponent(jLabel1)
                    .addComponent(jLabel2)
                    .addComponent(jLabel3))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(txtTotalAmount, javax.swing.GroupLayout.DEFAULT_SIZE, 169, Short.MAX_VALUE)
                    .addComponent(txtRemainingBalance, javax.swing.GroupLayout.DEFAULT_SIZE, 169, Short.MAX_VALUE)
                    .addComponent(txtPaidAmount, javax.swing.GroupLayout.DEFAULT_SIZE, 169, Short.MAX_VALUE)
                    .addComponent(txtNowPaying, javax.swing.GroupLayout.DEFAULT_SIZE, 169, Short.MAX_VALUE)
                    .addComponent(txtBalance, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, 169, Short.MAX_VALUE))
                .addContainerGap())
        );

        layout.linkSize(javax.swing.SwingConstants.HORIZONTAL, new java.awt.Component[] {jLabel1, jLabel2, jLabel3, jLabel4, jLabel5});

        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel1)
                    .addComponent(txtTotalAmount, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel2)
                    .addComponent(txtPaidAmount, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel3)
                    .addComponent(txtRemainingBalance, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel4)
                    .addComponent(txtNowPaying, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel5)
                    .addComponent(txtBalance, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        layout.linkSize(javax.swing.SwingConstants.VERTICAL, new java.awt.Component[] {jLabel1, jLabel2, jLabel3, jLabel4, jLabel5, txtBalance, txtNowPaying, txtPaidAmount, txtRemainingBalance, txtTotalAmount});

    }// </editor-fold>//GEN-END:initComponents

    private void formComponentShown(java.awt.event.ComponentEvent evt) {//GEN-FIRST:event_formComponentShown
        System.out.println("formComponentShown");
    }//GEN-LAST:event_formComponentShown

    private void txtNowPayingFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_txtNowPayingFocusGained
        SwingUtilities.invokeLater(new Runnable() {
            @Override
            public void run() {
                txtNowPaying.selectAll();
            }
        });
    }//GEN-LAST:event_txtNowPayingFocusGained

    private void txtNowPayingKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtNowPayingKeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER) {
            String sPaidAmount = txtNowPaying.getText();
            float fPaidAmount = Float.parseFloat(sPaidAmount);
            if (fPaidAmount == 0.0) {
                JOptionPane.showMessageDialog(this, "Please enter valid amount.", "Invalid", JOptionPane.INFORMATION_MESSAGE);
            } else {
                float fRemainingTotalAmount = Float.parseFloat(txtRemainingBalance.getText());
                float fBalanceAmount = fPaidAmount - fRemainingTotalAmount;
                txtBalance.setText("" + fBalanceAmount);

                if (fBalanceAmount < 0) {
                    settlementDialog.btnSettle.setText("Pay");
                } else {
                    settlementDialog.btnSettle.setText("Settle");
                }
                settlementDialog.btnSettle.requestFocus();
            }
        }
    }//GEN-LAST:event_txtNowPayingKeyPressed

    public void setTotalAmount(String totalAmount) {
        txtTotalAmount.setText(totalAmount);
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    public javax.swing.JFormattedTextField txtBalance;
    public javax.swing.JFormattedTextField txtNowPaying;
    public javax.swing.JFormattedTextField txtPaidAmount;
    public javax.swing.JFormattedTextField txtRemainingBalance;
    public javax.swing.JFormattedTextField txtTotalAmount;
    // End of variables declaration//GEN-END:variables
}
