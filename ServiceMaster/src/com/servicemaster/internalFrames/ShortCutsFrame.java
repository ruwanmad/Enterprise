/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servicemaster.internalFrames;

import com.servicemaster.data.SystemData;
import com.servicemaster.dialogs.ConfirmationDialog;
import com.servicemaster.forms.MainFrame;
import com.servicemaster.guiFunctions.ButtonFunctions;
import com.servicemaster.models.Module;
import com.servicemaster.utils.HibernateUtil;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import javax.swing.DefaultListModel;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author Ruwan Madawala
 */
public class ShortCutsFrame extends javax.swing.JInternalFrame {

    private final MainFrame mainFrame;

    /**
     * Creates new form ShortCuts
     *
     * @param mainFrame
     */
    public ShortCutsFrame(MainFrame mainFrame) {
        initComponents();
        this.mainFrame = mainFrame;
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        panelAvailable = new javax.swing.JPanel();
        jScrollPane1 = new javax.swing.JScrollPane();
        listAvailable = new javax.swing.JList();
        panelAdded = new javax.swing.JPanel();
        jScrollPane2 = new javax.swing.JScrollPane();
        listAdded = new javax.swing.JList();
        btnOK = new javax.swing.JButton();
        btnClose = new javax.swing.JButton();
        btnAdd = new javax.swing.JButton();
        btnRemove = new javax.swing.JButton();

        setClosable(true);
        setIconifiable(true);
        setTitle("Shortcuts");
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

        panelAvailable.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 255)), "Available Modules", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("SansSerif", 0, 10), java.awt.Color.blue)); // NOI18N
        panelAvailable.setLayout(new java.awt.BorderLayout());

        listAvailable.setToolTipText("");
        jScrollPane1.setViewportView(listAvailable);

        panelAvailable.add(jScrollPane1, java.awt.BorderLayout.CENTER);

        panelAdded.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 255)), "Already added modules", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("SansSerif", 0, 10), java.awt.Color.blue)); // NOI18N
        panelAdded.setLayout(new java.awt.BorderLayout());

        jScrollPane2.setViewportView(listAdded);

        panelAdded.add(jScrollPane2, java.awt.BorderLayout.CENTER);

        btnOK.setBackground(new java.awt.Color(150, 255, 150));
        btnOK.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        btnOK.setText("OK");
        btnOK.setBorder(javax.swing.BorderFactory.createMatteBorder(1, 1, 1, 1, new java.awt.Color(50, 255, 50)));
        btnOK.setContentAreaFilled(false);
        btnOK.setOpaque(true);
        btnOK.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                btnOKMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                btnOKMouseExited(evt);
            }
        });
        btnOK.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnOKActionPerformed(evt);
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

        btnAdd.setBackground(new java.awt.Color(150, 255, 150));
        btnAdd.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        btnAdd.setText(">>");
        btnAdd.setBorder(javax.swing.BorderFactory.createMatteBorder(1, 1, 1, 1, new java.awt.Color(50, 255, 50)));
        btnAdd.setContentAreaFilled(false);
        btnAdd.setOpaque(true);
        btnAdd.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                btnAddMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                btnAddMouseExited(evt);
            }
        });
        btnAdd.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnAddActionPerformed(evt);
            }
        });

        btnRemove.setBackground(new java.awt.Color(150, 255, 150));
        btnRemove.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        btnRemove.setText("<<");
        btnRemove.setBorder(javax.swing.BorderFactory.createMatteBorder(1, 1, 1, 1, new java.awt.Color(50, 255, 50)));
        btnRemove.setContentAreaFilled(false);
        btnRemove.setOpaque(true);
        btnRemove.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                btnRemoveMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                btnRemoveMouseExited(evt);
            }
        });
        btnRemove.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnRemoveActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addComponent(panelAvailable, javax.swing.GroupLayout.PREFERRED_SIZE, 179, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(btnAdd, javax.swing.GroupLayout.PREFERRED_SIZE, 75, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(btnRemove, javax.swing.GroupLayout.PREFERRED_SIZE, 75, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(panelAdded, javax.swing.GroupLayout.PREFERRED_SIZE, 221, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                        .addComponent(btnOK, javax.swing.GroupLayout.PREFERRED_SIZE, 75, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(btnClose, javax.swing.GroupLayout.PREFERRED_SIZE, 75, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap())
        );

        jPanel1Layout.linkSize(javax.swing.SwingConstants.HORIZONTAL, new java.awt.Component[] {panelAdded, panelAvailable});

        jPanel1Layout.linkSize(javax.swing.SwingConstants.HORIZONTAL, new java.awt.Component[] {btnClose, btnOK});

        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addContainerGap()
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(panelAvailable, javax.swing.GroupLayout.PREFERRED_SIZE, 212, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(panelAdded, javax.swing.GroupLayout.PREFERRED_SIZE, 212, javax.swing.GroupLayout.PREFERRED_SIZE)))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(37, 37, 37)
                        .addComponent(btnAdd, javax.swing.GroupLayout.PREFERRED_SIZE, 25, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(btnRemove, javax.swing.GroupLayout.PREFERRED_SIZE, 25, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addGap(50, 50, 50)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(btnOK, javax.swing.GroupLayout.PREFERRED_SIZE, 25, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(btnClose, javax.swing.GroupLayout.PREFERRED_SIZE, 25, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap())
        );

        jPanel1Layout.linkSize(javax.swing.SwingConstants.VERTICAL, new java.awt.Component[] {panelAdded, panelAvailable});

        jPanel1Layout.linkSize(javax.swing.SwingConstants.VERTICAL, new java.awt.Component[] {btnClose, btnOK});

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
        );

        setBounds(0, 0, 558, 338);
    }// </editor-fold>//GEN-END:initComponents

    private void formInternalFrameOpened(javax.swing.event.InternalFrameEvent evt) {//GEN-FIRST:event_formInternalFrameOpened
        DefaultListModel<String> availableModel = new DefaultListModel<>();
        DefaultListModel<String> addedModel = new DefaultListModel<>();

        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        Query query = session.createQuery("from Module m where m.isShortcutAdded = 0");
        List objectList = query.list();
        if (!objectList.isEmpty()) {
            for (int i = 0; i < objectList.size(); i++) {
                if (objectList.get(i) instanceof Module) {
                    Module module = (Module) objectList.get(i);
                    String moduleName = module.getModuleName();
                    availableModel.add(i, moduleName);
                }
            }
        }

        query = session.createQuery("from Module m where m.isShortcutAdded = 1");
        objectList = query.list();
        if (!objectList.isEmpty()) {
            for (int i = 0; i < objectList.size(); i++) {
                if (objectList.get(i) instanceof Module) {
                    Module module = (Module) objectList.get(i);
                    String moduleName = module.getModuleName();
                    addedModel.add(i, moduleName);
                }
            }
        }
        session.getTransaction().commit();
        session.close();

        listAvailable.setModel(availableModel);
        listAdded.setModel(addedModel);
    }//GEN-LAST:event_formInternalFrameOpened

    private void btnOKMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnOKMouseEntered
        ButtonFunctions.changeBackgroundColor(evt.getSource(), SystemData.MOUSE_ENTER_COLOR);
    }//GEN-LAST:event_btnOKMouseEntered

    private void btnOKMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnOKMouseExited
        ButtonFunctions.changeBackgroundColor(evt.getSource(), SystemData.MOUSE_EXIT_COLOR);
    }//GEN-LAST:event_btnOKMouseExited

    private void btnOKActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnOKActionPerformed
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();

        DefaultListModel<String> model = (DefaultListModel<String>) listAdded.getModel();
        if (!model.isEmpty()) {
            mainFrame.panelShortcuts.removeAll();
            Object[] array = model.toArray();
            for (Object value : array) {
                if (value instanceof String) {
                    mainFrame.addShortCuts(value.toString());
                    HashMap<String, Object> map = MainFrame.allModuleMap.get(value.toString());

                    Module module = (Module) session.load(Module.class, Integer.parseInt((String) map.get("ModuleCode")));
                    module.setIsShortcutAdded(1);
                    module.setModifiedDate(new Date());
                    module.setModifiedTime(new Date());
                    module.setModifiedUser(MainFrame.user.getUserId());
                    session.saveOrUpdate(module);
                }
            }
            mainFrame.panelShortcuts.revalidate();
            mainFrame.panelShortcuts.repaint();
        } else {
            mainFrame.panelShortcuts.removeAll();
            mainFrame.panelShortcuts.revalidate();
            mainFrame.panelShortcuts.repaint();
        }

        model = (DefaultListModel<String>) listAvailable.getModel();
        if (!model.isEmpty()) {
            Object[] array = model.toArray();
            for (Object value : array) {
                if (value instanceof String) {
                    HashMap<String, Object> map = MainFrame.allModuleMap.get(value.toString());

                    Module module = (Module) session.load(Module.class, Integer.parseInt((String) map.get("ModuleCode")));
                    module.setIsShortcutAdded(0);
                    module.setModifiedDate(new Date());
                    module.setModifiedTime(new Date());
                    module.setModifiedUser(MainFrame.user.getUserId());
                    session.saveOrUpdate(module);
                }
            }
        }

        session.getTransaction().commit();
        session.close();
    }//GEN-LAST:event_btnOKActionPerformed

    private void btnCloseMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnCloseMouseEntered
        ButtonFunctions.changeBackgroundColor(evt.getSource(), SystemData.MOUSE_ENTER_COLOR);
    }//GEN-LAST:event_btnCloseMouseEntered

    private void btnCloseMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnCloseMouseExited
        ButtonFunctions.changeBackgroundColor(evt.getSource(), SystemData.MOUSE_EXIT_COLOR);
    }//GEN-LAST:event_btnCloseMouseExited

    private void btnCloseActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnCloseActionPerformed
        this.dispose();
    }//GEN-LAST:event_btnCloseActionPerformed

    private void btnAddMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnAddMouseEntered
        ButtonFunctions.changeBackgroundColor(evt.getSource(), SystemData.MOUSE_ENTER_COLOR);
    }//GEN-LAST:event_btnAddMouseEntered

    private void btnAddMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnAddMouseExited
        ButtonFunctions.changeBackgroundColor(evt.getSource(), SystemData.MOUSE_EXIT_COLOR);
    }//GEN-LAST:event_btnAddMouseExited

    private void btnAddActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnAddActionPerformed
        int[] selectedIndices = listAvailable.getSelectedIndices();
        DefaultListModel availableModel = (DefaultListModel) listAvailable.getModel();
        for (int i = 0; i < selectedIndices.length; i++) {
            int index = selectedIndices[i];

            String value = (String) availableModel.get(index);

            DefaultListModel addedModel = (DefaultListModel) listAdded.getModel();
            addedModel.add(addedModel.getSize(), value);
        }

        for (int i = (selectedIndices.length - 1); i > -1; i--) {
            int index = selectedIndices[i];
            availableModel.remove(index);
        }
    }//GEN-LAST:event_btnAddActionPerformed

    private void btnRemoveMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnRemoveMouseEntered
        ButtonFunctions.changeBackgroundColor(evt.getSource(), SystemData.MOUSE_ENTER_COLOR);
    }//GEN-LAST:event_btnRemoveMouseEntered

    private void btnRemoveMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnRemoveMouseExited
        ButtonFunctions.changeBackgroundColor(evt.getSource(), SystemData.MOUSE_EXIT_COLOR);
    }//GEN-LAST:event_btnRemoveMouseExited

    private void btnRemoveActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnRemoveActionPerformed
        int[] selectedIndices = listAdded.getSelectedIndices();
        DefaultListModel addedModel = (DefaultListModel) listAdded.getModel();
        for (int i = 0; i < selectedIndices.length; i++) {
            int index = selectedIndices[i];

            String value = (String) addedModel.get(index);

            DefaultListModel availableModel = (DefaultListModel) listAvailable.getModel();
            availableModel.add(availableModel.getSize(), value);
        }

        for (int i = (selectedIndices.length - 1); i > -1; i--) {
            int index = selectedIndices[i];
            addedModel.remove(index);
        }
    }//GEN-LAST:event_btnRemoveActionPerformed


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnAdd;
    private javax.swing.JButton btnClose;
    private javax.swing.JButton btnOK;
    private javax.swing.JButton btnRemove;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JList listAdded;
    private javax.swing.JList listAvailable;
    private javax.swing.JPanel panelAdded;
    private javax.swing.JPanel panelAvailable;
    // End of variables declaration//GEN-END:variables
}
