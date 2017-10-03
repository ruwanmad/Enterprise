/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servicemaster.panels;

import com.servicemaster.dialogs.SettlementDialog;
import com.servicemaster.functions.AutoCompletion;
import com.servicemaster.models.Account;
import com.servicemaster.models.Bank;
import com.servicemaster.utils.HibernateUtil;
import java.awt.event.KeyEvent;
import java.util.Date;
import java.util.List;
import javax.swing.JOptionPane;
import javax.swing.SwingUtilities;
import org.hibernate.Session;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author RuwanM
 */
public class ChequeSettlePanel extends javax.swing.JPanel {

    private final SettlementDialog settlementDialog;
    private final String paymentTypeCode;

    /**
     * Creates new form CashSettlePanel
     *
     * @param settlementDialog
     * @param paymentTypeCode
     */
    public ChequeSettlePanel(SettlementDialog settlementDialog, String paymentTypeCode) {
        initComponents();
        this.settlementDialog = settlementDialog;
        this.paymentTypeCode = paymentTypeCode;
        
        Session session = HibernateUtil.getSessionFactory().openSession();
        
        List<Account> accounts = session
                .createCriteria(Account.class)
                .createAlias("subAccount", "subAccount")
                .add(Restrictions.eq("subAccount.code", "SAC1001"))
                .list();
        
        if (!accounts.isEmpty()) {
            cmbBankAccount.removeAllItems();
            cmbBankAccount.addItem("");
            for (Account account : accounts) {
                cmbBankAccount.addItem(account.getDescription());
            }
        }
        
        List<Bank> banks = session
                .createCriteria(Bank.class)
                .addOrder(Order.asc("id"))
                .list();
        
        if (!banks.isEmpty()) {
            cmbBank.removeAllItems();
            cmbBank.addItem("");
            for (Bank bank : banks) {
                cmbBank.addItem(bank.getBankName());
            }
        }
        
        session.close();
        
        AutoCompletion.enable(cmbBank, cmbBankAccount);
        AutoCompletion.enable(cmbBankAccount, settlementDialog.btnSettle);
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
        jLabel6 = new javax.swing.JLabel();
        txtChequeNumber = new javax.swing.JFormattedTextField();
        jLabel7 = new javax.swing.JLabel();
        dateChequeDate = new com.toedter.calendar.JDateChooser();
        jLabel8 = new javax.swing.JLabel();
        cmbBank = new javax.swing.JComboBox<>();
        jLabel9 = new javax.swing.JLabel();
        cmbBankAccount = new javax.swing.JComboBox<>();

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

        jLabel6.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        jLabel6.setText("Cheque No :");

        txtChequeNumber.setHorizontalAlignment(javax.swing.JTextField.TRAILING);
        txtChequeNumber.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                txtChequeNumberKeyPressed(evt);
            }
        });

        jLabel7.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        jLabel7.setText("Cheque Date :");

        dateChequeDate.setDate(new Date());
        dateChequeDate.setDateFormatString("yyyy-MM-dd");
        dateChequeDate.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        dateChequeDate.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                dateChequeDateKeyPressed(evt);
            }
        });

        jLabel8.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        jLabel8.setText("Bank :");

        cmbBank.setEditable(true);
        cmbBank.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N

        jLabel9.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        jLabel9.setText("Bank Account :");

        cmbBankAccount.setEditable(true);
        cmbBankAccount.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                        .addComponent(jLabel5, javax.swing.GroupLayout.Alignment.TRAILING)
                        .addComponent(jLabel4)
                        .addComponent(jLabel1)
                        .addComponent(jLabel2)
                        .addComponent(jLabel3)
                        .addComponent(jLabel6)
                        .addComponent(jLabel7)
                        .addComponent(jLabel8))
                    .addComponent(jLabel9))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(txtBalance, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, 169, Short.MAX_VALUE)
                    .addComponent(txtNowPaying, javax.swing.GroupLayout.DEFAULT_SIZE, 169, Short.MAX_VALUE)
                    .addComponent(txtTotalAmount, javax.swing.GroupLayout.DEFAULT_SIZE, 169, Short.MAX_VALUE)
                    .addComponent(txtRemainingBalance, javax.swing.GroupLayout.DEFAULT_SIZE, 169, Short.MAX_VALUE)
                    .addComponent(txtPaidAmount, javax.swing.GroupLayout.DEFAULT_SIZE, 169, Short.MAX_VALUE)
                    .addComponent(txtChequeNumber, javax.swing.GroupLayout.DEFAULT_SIZE, 169, Short.MAX_VALUE)
                    .addComponent(dateChequeDate, javax.swing.GroupLayout.DEFAULT_SIZE, 169, Short.MAX_VALUE)
                    .addComponent(cmbBank, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(cmbBankAccount, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap())
        );

        layout.linkSize(javax.swing.SwingConstants.HORIZONTAL, new java.awt.Component[] {jLabel1, jLabel2, jLabel3, jLabel4, jLabel5, jLabel6, jLabel7, jLabel8, jLabel9});

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
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel6)
                    .addComponent(txtChequeNumber, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(jLabel7)
                    .addComponent(dateChequeDate, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel8)
                    .addComponent(cmbBank, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel9)
                    .addComponent(cmbBankAccount, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap())
        );

        layout.linkSize(javax.swing.SwingConstants.VERTICAL, new java.awt.Component[] {cmbBank, cmbBankAccount, dateChequeDate, jLabel1, jLabel2, jLabel3, jLabel4, jLabel5, jLabel6, jLabel7, jLabel8, jLabel9, txtBalance, txtChequeNumber, txtNowPaying, txtPaidAmount, txtRemainingBalance, txtTotalAmount});

    }// </editor-fold>//GEN-END:initComponents

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
                txtChequeNumber.requestFocus();
            }
        }
    }//GEN-LAST:event_txtNowPayingKeyPressed

    private void dateChequeDateKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_dateChequeDateKeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER) {
            cmbBank.requestFocus();
        }
    }//GEN-LAST:event_dateChequeDateKeyPressed

    private void txtChequeNumberKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtChequeNumberKeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER) {
            dateChequeDate.requestFocus();
        }
    }//GEN-LAST:event_txtChequeNumberKeyPressed

    public void setTotalAmount(String totalAmount) {
        txtTotalAmount.setText(totalAmount);
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JComboBox<String> cmbBank;
    private javax.swing.JComboBox<String> cmbBankAccount;
    public com.toedter.calendar.JDateChooser dateChequeDate;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    public javax.swing.JFormattedTextField txtBalance;
    public javax.swing.JFormattedTextField txtChequeNumber;
    public javax.swing.JFormattedTextField txtNowPaying;
    public javax.swing.JFormattedTextField txtPaidAmount;
    public javax.swing.JFormattedTextField txtRemainingBalance;
    public javax.swing.JFormattedTextField txtTotalAmount;
    // End of variables declaration//GEN-END:variables
}
