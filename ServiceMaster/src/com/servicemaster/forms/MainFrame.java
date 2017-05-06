/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servicemaster.forms;

import com.servicemaster.entities.Module;
import com.servicemaster.entities.User;
import com.servicemaster.internalFrames.Category;
import com.servicemaster.internalFrames.ShortCuts;
import com.servicemaster.utils.HibernateUtil;
import java.awt.Dimension;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.Image;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.List;
import java.util.Set;
import java.util.TreeMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFileChooser;
import javax.swing.JInternalFrame;
import javax.swing.JOptionPane;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author Ruwan Madawala
 */
public class MainFrame extends javax.swing.JFrame {

    public static User user;

    /**
     * Creates new form MainFrame
     * @param user
     */
    public MainFrame(User user) {
        initComponents();
        MainFrame.user = user;
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        desktopPane = new javax.swing.JDesktopPane(){
            ImageIcon icon = new ImageIcon("images\\background.jpg");
            Image image = icon.getImage();

            Image newimage = image.getScaledInstance(1500, 1000, Image.SCALE_SMOOTH);

            @Override
            protected void paintComponent(Graphics g)
            {
                super.paintComponent(g);
                g.drawImage(newimage, 0, 0, this);
            }
        };
        panelShortcuts = new javax.swing.JPanel();
        menuBar = new javax.swing.JMenuBar();
        mFile = new javax.swing.JMenu();
        mMasterFiles = new javax.swing.JMenu();
        miCategory = new javax.swing.JMenuItem();
        miSubCategory = new javax.swing.JMenuItem();
        miItems = new javax.swing.JMenuItem();
        miLocations = new javax.swing.JMenuItem();
        miBusinessPartner = new javax.swing.JMenuItem();
        miPrinters = new javax.swing.JMenuItem();
        js1 = new javax.swing.JPopupMenu.Separator();
        miUsers = new javax.swing.JMenuItem();
        miUserPrivilages = new javax.swing.JMenuItem();
        js2 = new javax.swing.JPopupMenu.Separator();
        miExit = new javax.swing.JMenuItem();
        mTransactions = new javax.swing.JMenu();
        mReports = new javax.swing.JMenu();
        mOptions = new javax.swing.JMenu();
        miAddShortcuts = new javax.swing.JMenuItem();
        miChangeBackground = new javax.swing.JMenuItem();

        setDefaultCloseOperation(javax.swing.WindowConstants.DO_NOTHING_ON_CLOSE);
        setTitle("Enterprise");
        addWindowListener(new java.awt.event.WindowAdapter() {
            public void windowClosing(java.awt.event.WindowEvent evt) {
                formWindowClosing(evt);
            }
            public void windowOpened(java.awt.event.WindowEvent evt) {
                formWindowOpened(evt);
            }
        });

        desktopPane.setBackground(new java.awt.Color(204, 204, 204));

        panelShortcuts.setOpaque(false);
        panelShortcuts.setLayout(new java.awt.FlowLayout(java.awt.FlowLayout.LEFT, 4, 4));

        desktopPane.setLayer(panelShortcuts, javax.swing.JLayeredPane.DEFAULT_LAYER);

        javax.swing.GroupLayout desktopPaneLayout = new javax.swing.GroupLayout(desktopPane);
        desktopPane.setLayout(desktopPaneLayout);
        desktopPaneLayout.setHorizontalGroup(
            desktopPaneLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(desktopPaneLayout.createSequentialGroup()
                .addGap(2, 2, 2)
                .addComponent(panelShortcuts, javax.swing.GroupLayout.PREFERRED_SIZE, 300, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(298, Short.MAX_VALUE))
        );
        desktopPaneLayout.setVerticalGroup(
            desktopPaneLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(panelShortcuts, javax.swing.GroupLayout.DEFAULT_SIZE, 479, Short.MAX_VALUE)
        );

        mFile.setText("File");
        mFile.setEnabled(false);
        mFile.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                mFileActionPerformed(evt);
            }
        });

        mMasterFiles.setText("Master Files");
        mMasterFiles.setEnabled(false);

        miCategory.setAccelerator(javax.swing.KeyStroke.getKeyStroke(java.awt.event.KeyEvent.VK_C, java.awt.event.InputEvent.SHIFT_MASK | java.awt.event.InputEvent.CTRL_MASK));
        miCategory.setText("Category");
        mMasterFiles.add(miCategory);

        miSubCategory.setAccelerator(javax.swing.KeyStroke.getKeyStroke(java.awt.event.KeyEvent.VK_S, java.awt.event.InputEvent.SHIFT_MASK | java.awt.event.InputEvent.CTRL_MASK));
        miSubCategory.setText("Sub Category");
        mMasterFiles.add(miSubCategory);

        miItems.setAccelerator(javax.swing.KeyStroke.getKeyStroke(java.awt.event.KeyEvent.VK_I, java.awt.event.InputEvent.SHIFT_MASK | java.awt.event.InputEvent.CTRL_MASK));
        miItems.setText("Items");
        mMasterFiles.add(miItems);

        miLocations.setAccelerator(javax.swing.KeyStroke.getKeyStroke(java.awt.event.KeyEvent.VK_L, java.awt.event.InputEvent.SHIFT_MASK | java.awt.event.InputEvent.CTRL_MASK));
        miLocations.setText("Locations");
        mMasterFiles.add(miLocations);

        miBusinessPartner.setAccelerator(javax.swing.KeyStroke.getKeyStroke(java.awt.event.KeyEvent.VK_B, java.awt.event.InputEvent.SHIFT_MASK | java.awt.event.InputEvent.CTRL_MASK));
        miBusinessPartner.setText("Business Partner");
        mMasterFiles.add(miBusinessPartner);

        miPrinters.setAccelerator(javax.swing.KeyStroke.getKeyStroke(java.awt.event.KeyEvent.VK_P, java.awt.event.InputEvent.SHIFT_MASK | java.awt.event.InputEvent.CTRL_MASK));
        miPrinters.setText("Printers");
        mMasterFiles.add(miPrinters);

        mFile.add(mMasterFiles);
        mFile.add(js1);

        miUsers.setAccelerator(javax.swing.KeyStroke.getKeyStroke(java.awt.event.KeyEvent.VK_U, java.awt.event.InputEvent.SHIFT_MASK | java.awt.event.InputEvent.CTRL_MASK));
        miUsers.setText("Users");
        miUsers.setEnabled(false);
        mFile.add(miUsers);

        miUserPrivilages.setAccelerator(javax.swing.KeyStroke.getKeyStroke(java.awt.event.KeyEvent.VK_R, java.awt.event.InputEvent.SHIFT_MASK | java.awt.event.InputEvent.CTRL_MASK));
        miUserPrivilages.setText("User Privilages");
        miUserPrivilages.setEnabled(false);
        mFile.add(miUserPrivilages);
        mFile.add(js2);

        miExit.setAccelerator(javax.swing.KeyStroke.getKeyStroke(java.awt.event.KeyEvent.VK_F4, java.awt.event.InputEvent.ALT_MASK));
        miExit.setText("Exit");
        miExit.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                miExitActionPerformed(evt);
            }
        });
        mFile.add(miExit);

        menuBar.add(mFile);

        mTransactions.setText("Transactions");
        mTransactions.setEnabled(false);
        menuBar.add(mTransactions);

        mReports.setText("Reports");
        menuBar.add(mReports);

        mOptions.setText("Options");
        mOptions.setEnabled(false);

        miAddShortcuts.setAccelerator(javax.swing.KeyStroke.getKeyStroke(java.awt.event.KeyEvent.VK_A, java.awt.event.InputEvent.SHIFT_MASK | java.awt.event.InputEvent.CTRL_MASK));
        miAddShortcuts.setText("Add Shortcuts");
        miAddShortcuts.setEnabled(false);
        miAddShortcuts.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                miAddShortcutsActionPerformed(evt);
            }
        });
        mOptions.add(miAddShortcuts);

        miChangeBackground.setAccelerator(javax.swing.KeyStroke.getKeyStroke(java.awt.event.KeyEvent.VK_B, java.awt.event.InputEvent.CTRL_MASK));
        miChangeBackground.setText("Change background");
        miChangeBackground.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                miChangeBackgroundActionPerformed(evt);
            }
        });
        mOptions.add(miChangeBackground);

        menuBar.add(mOptions);

        setJMenuBar(menuBar);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(desktopPane)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(desktopPane)
        );

        setSize(new java.awt.Dimension(616, 538));
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    private void miExitActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_miExitActionPerformed
        this.exitApllication();
    }//GEN-LAST:event_miExitActionPerformed

    private void formWindowOpened(java.awt.event.WindowEvent evt) {//GEN-FIRST:event_formWindowOpened
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();

        Query query = session.createQuery("from Module m");
        List objectList = query.list();
        for (Object object : objectList) {
            if (object instanceof Module) {
                Module module = (Module) object;
                String moduleCode = module.getModuleCode();
                String moduleName = module.getModuleName();
                allModuleMap.put(moduleName, moduleCode);
            }
        }

        query = session.createQuery("from Module m where m.isShortcutAdded = 0 order by m.moduleCode");
        objectList = query.list();
        for (Object object : objectList) {
            if (object instanceof Module) {
                Module module = (Module) object;
                String moduleCode = module.getModuleCode();
                String moduleName = module.getModuleName();
                availableModuleMap.put(moduleName, moduleCode);
            }
        }

        query = session.createQuery("from Module m where m.isShortcutAdded = 1 order by m.moduleCode");
        objectList = query.list();
        for (Object object : objectList) {
            if (object instanceof Module) {
                Module module = (Module) object;
                String moduleCode = module.getModuleCode();
                String moduleName = module.getModuleName();
                addedModuleMap.put(moduleName, moduleCode);
            }
        }
        session.getTransaction().commit();
        session.close();

        if (!addedModuleMap.isEmpty()) {
            Set<String> keySet = addedModuleMap.keySet();
            for (String key : keySet) {
                this.addShortCuts(key);
            }

            this.panelShortcuts.revalidate();
            this.panelShortcuts.repaint();
        }
    }//GEN-LAST:event_formWindowOpened

    private void miAddShortcutsActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_miAddShortcutsActionPerformed
        ShortCuts shortCuts = new ShortCuts(this);
        shortCuts.setLocation(300, 0);
        desktopPane.add(shortCuts);
        shortCuts.setVisible(true);
    }//GEN-LAST:event_miAddShortcutsActionPerformed

    private void miChangeBackgroundActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_miChangeBackgroundActionPerformed
        JFileChooser fileChooser = new JFileChooser();
        int result = fileChooser.showOpenDialog(this);
        if (result == JFileChooser.OPEN_DIALOG) {
            try {
                File selectedFile = fileChooser.getSelectedFile();
                Path path = Paths.get("images");
                Files.copy(new FileInputStream(selectedFile), path, StandardCopyOption.REPLACE_EXISTING);
                JOptionPane.showMessageDialog(this, "Please restart the application", "Restart", JOptionPane.INFORMATION_MESSAGE);
                System.exit(0);
            } catch (IOException ex) {
                Logger.getLogger(MainFrame.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }//GEN-LAST:event_miChangeBackgroundActionPerformed

    private void mFileActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_mFileActionPerformed
        this.exitApllication();
    }//GEN-LAST:event_mFileActionPerformed

    private void formWindowClosing(java.awt.event.WindowEvent evt) {//GEN-FIRST:event_formWindowClosing
        this.exitApllication();
    }//GEN-LAST:event_formWindowClosing

    private void exitApllication() {
        int option = JOptionPane.showConfirmDialog(this, "Are you sure?", "Sure", JOptionPane.YES_NO_OPTION);
        if (option == JOptionPane.YES_OPTION) {
            System.exit(0);
        }
    }

    public static void openWindow(String moduleCode) {
        JInternalFrame internalFrame = null;
        switch (moduleCode) {
            case "1": {
                internalFrame = new Category();
                break;
            }
            case "2": {
                break;
            }
            case "3": {
                break;
            }
            case "4": {
                break;
            }
            case "5": {
                break;
            }
            case "6": {
                break;
            }
            case "7": {
                break;
            }
            default: {
                internalFrame = null;
            }
        }

        if (internalFrame != null) {
            desktopPane.add(internalFrame);
            internalFrame.setVisible(true);
        }
    }

    public void addShortCuts(String name) {
        JButton button = new JButton(name);
        button.addActionListener(new ActionListener() {

            @Override
            public void actionPerformed(ActionEvent e) {
                MainFrame.openWindow(MainFrame.allModuleMap.get(e.getActionCommand()));
            }
        });
        button.setPreferredSize(new Dimension(144, 50));
        button.setFont(new Font(Font.SANS_SERIF, Font.PLAIN, 18));
        this.panelShortcuts.add(button);
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    public static javax.swing.JDesktopPane desktopPane;
    private javax.swing.JPopupMenu.Separator js1;
    private javax.swing.JPopupMenu.Separator js2;
    public javax.swing.JMenu mFile;
    public javax.swing.JMenu mMasterFiles;
    public javax.swing.JMenu mOptions;
    private javax.swing.JMenu mReports;
    public javax.swing.JMenu mTransactions;
    private javax.swing.JMenuBar menuBar;
    public javax.swing.JMenuItem miAddShortcuts;
    private javax.swing.JMenuItem miBusinessPartner;
    private javax.swing.JMenuItem miCategory;
    private javax.swing.JMenuItem miChangeBackground;
    private javax.swing.JMenuItem miExit;
    private javax.swing.JMenuItem miItems;
    private javax.swing.JMenuItem miLocations;
    private javax.swing.JMenuItem miPrinters;
    private javax.swing.JMenuItem miSubCategory;
    public javax.swing.JMenuItem miUserPrivilages;
    public javax.swing.JMenuItem miUsers;
    public javax.swing.JPanel panelShortcuts;
    // End of variables declaration//GEN-END:variables
    public static final TreeMap<String, String> allModuleMap = new TreeMap<>();
    public static final TreeMap<String, String> availableModuleMap = new TreeMap<>();
    public static final TreeMap<String, String> addedModuleMap = new TreeMap<>();
}
