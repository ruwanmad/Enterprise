/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servicemaster.listners;

import com.servicemaster.dialogs.SettlementDialog;
import com.servicemaster.models.Invoice;
import com.servicemaster.models.Payment;
import com.servicemaster.models.Service;
import com.servicemaster.panels.CashSettlePanel;
import com.servicemaster.utils.HibernateUtil;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.List;
import javax.swing.JButton;
import javax.swing.JOptionPane;
import javax.swing.SwingUtilities;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author RuwanM
 */
public class PaymentButtonActionListners implements ActionListener {

    private final SettlementDialog settlementDialog;
    private final Service service;
    private final Invoice invoice;

    public PaymentButtonActionListners(SettlementDialog settlementDialog, Service service, Invoice invoice) {
        this.settlementDialog = settlementDialog;
        this.service = service;
        this.invoice = invoice;
    }

    @Override
    public void actionPerformed(ActionEvent evt) {
        Object object = evt.getSource();
        if (object instanceof JButton) {
            JButton button = (JButton) object;
            String name = button.getName();
            if (name.equalsIgnoreCase("PTY1000")) {
                if (settlementDialog.panelFrame != null) {
                    JOptionPane.showMessageDialog(settlementDialog, "Please save and close current window.", "Close", JOptionPane.INFORMATION_MESSAGE);
                } else {
                    final CashSettlePanel cashSettlePanel = new CashSettlePanel(service, this.settlementDialog, "PTY1000");
                    settlementDialog.panelFrame = cashSettlePanel;
                    settlementDialog.panelWindow.add(settlementDialog.panelFrame);
                    settlementDialog.panelWindow.revalidate();
                    settlementDialog.panelWindow.repaint();
                    SwingUtilities.invokeLater(new Runnable() {
                        @Override
                        public void run() {
                            cashSettlePanel.txtNowPaying.requestFocus();
                        }
                    });

                    Session session = HibernateUtil.getSessionFactory().openSession();
                    Transaction transaction = session.beginTransaction();

                    Query query = session.createQuery("from Payment p where p.invoice = :inv order by p.paymentCode");
                    query.setParameter("inv", this.invoice);

                    List list = query.list();
                    if (list.isEmpty()) {
                        cashSettlePanel.txtTotalAmount.setText("" + service.getGrandTotal());
                        cashSettlePanel.txtRemainingBalance.setText("" + service.getGrandTotal());
                    } else {
                        float paidAmount = 0.0f;
                        for (Object tempPayment : list) {
                            if (tempPayment instanceof Payment) {
                                Payment payment = (Payment) tempPayment;
                                paidAmount += payment.getAmount();
                            }
                        }
                        cashSettlePanel.txtTotalAmount.setText("" + service.getGrandTotal());
                        cashSettlePanel.txtPaidAmount.setText("" + paidAmount);
                        cashSettlePanel.txtRemainingBalance.setText("" + (service.getGrandTotal() - paidAmount));
                    }

                    transaction.commit();
                    session.close();
                }
            } else if (name.equalsIgnoreCase("PTY1001")) {
            } else if (name.equalsIgnoreCase("PTY1002")) {
            } else if (name.equalsIgnoreCase("PTY1003")) {
            }
        }
    }

}
