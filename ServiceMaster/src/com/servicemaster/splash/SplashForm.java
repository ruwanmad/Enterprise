/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

 /*
 * Loader.java
 *
 * Created on Mar 12, 2013, 8:21:53 AM
 */
package com.servicemaster.splash;

import com.servicemaster.frames.LoginFrame;
import com.servicemaster.utils.HibernateUtil;
import java.awt.Color;
import java.awt.Graphics;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.ImageIcon;
import javax.swing.Timer;
import javax.swing.UIManager;
import org.hibernate.Session;

/**
 *
 * @author TiVA
 */
public class SplashForm extends javax.swing.JDialog {

    private int progress_value = 1;

    /**
     * Creates new form Loader
     *
     * @param parent
     * @param modal
     */
    public SplashForm(java.awt.Frame parent, boolean modal) {
        super(parent, modal);
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

        imagePanel = new javax.swing.JPanel(){
            ImageIcon icon = new javax.swing.ImageIcon(getClass().getResource("/com/servicemaster/splash/image/splash.png"));

            protected void paintComponent (Graphics g){
                super.paintComponent(g);
                g.drawImage(icon.getImage(),0, 0, null);
            }
        };
        progressBar = new javax.swing.JProgressBar();
        lblStatusText = new javax.swing.JLabel();
        lblPercentageText = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setUndecorated(true);
        addWindowListener(new java.awt.event.WindowAdapter() {
            public void windowOpened(java.awt.event.WindowEvent evt) {
                formWindowOpened(evt);
            }
        });

        progressBar.setBackground(new java.awt.Color(0, 255, 0));
        progressBar.setForeground(new java.awt.Color(0, 255, 0));
        progressBar.setAlignmentX(0.0F);
        progressBar.setAlignmentY(0.0F);
        progressBar.setBorder(javax.swing.BorderFactory.createCompoundBorder());
        progressBar.setFocusable(false);
        progressBar.setRequestFocusEnabled(false);

        lblStatusText.setFont(new java.awt.Font("Trebuchet MS", 1, 11)); // NOI18N
        lblStatusText.setForeground(new java.awt.Color(255, 194, 15));
        lblStatusText.setText("intializing....");

        lblPercentageText.setFont(new java.awt.Font("Trebuchet MS", 1, 11)); // NOI18N
        lblPercentageText.setForeground(new java.awt.Color(255, 194, 15));
        lblPercentageText.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);

        javax.swing.GroupLayout imagePanelLayout = new javax.swing.GroupLayout(imagePanel);
        imagePanel.setLayout(imagePanelLayout);
        imagePanelLayout.setHorizontalGroup(
            imagePanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(imagePanelLayout.createSequentialGroup()
                .addGap(60, 60, 60)
                .addComponent(progressBar, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addGap(60, 60, 60))
            .addGroup(imagePanelLayout.createSequentialGroup()
                .addContainerGap()
                .addComponent(lblStatusText, javax.swing.GroupLayout.PREFERRED_SIZE, 492, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(lblPercentageText, javax.swing.GroupLayout.DEFAULT_SIZE, 82, Short.MAX_VALUE)
                .addContainerGap())
        );
        imagePanelLayout.setVerticalGroup(
            imagePanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, imagePanelLayout.createSequentialGroup()
                .addContainerGap(311, Short.MAX_VALUE)
                .addGroup(imagePanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(lblStatusText, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 13, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(lblPercentageText, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 13, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(progressBar, javax.swing.GroupLayout.PREFERRED_SIZE, 10, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(60, 60, 60))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(imagePanel, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(imagePanel, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );

        setSize(new java.awt.Dimension(600, 400));
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    private void formWindowOpened(java.awt.event.WindowEvent evt) {//GEN-FIRST:event_formWindowOpened
        UIManager.put("ProgressBar.background", Color.ORANGE);
        UIManager.put("ProgressBar.foreground", Color.BLUE);
        UIManager.put("ProgressBar.selectionBackground", Color.RED);
        UIManager.put("ProgressBar.selectionForeground", Color.GREEN);
        this.startSplashTimer();
    }//GEN-LAST:event_formWindowOpened

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JPanel imagePanel;
    private javax.swing.JLabel lblPercentageText;
    private javax.swing.JLabel lblStatusText;
    private javax.swing.JProgressBar progressBar;
    // End of variables declaration//GEN-END:variables

    /**
     *
     */
    private void startSplashTimer() {
        Timer timer = new Timer(85, new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                progressBar.setValue(progress_value);
                lblPercentageText.setText("initializing " + progress_value + "%");
                switch (progress_value) {
                    case 10:
                        lblStatusText.setText("Creating database connection...");
                        break;
                    case 15:
                        Session session = HibernateUtil.getSessionFactory().openSession();
                        session.beginTransaction();
                        session.getTransaction().commit();
                        session.close();
                        break;
                    case 20:
                        lblStatusText.setText("Database successfully connected...");
                        break;
                    case 30:
                        lblStatusText.setText("Modules are loading...");
                        break;
                    case 45:
                        lblStatusText.setText("Module initializing begun...");
                        break;
                    case 75:
                        lblStatusText.setText("Module initializing completed...");
                        break;
                    case 90:
                        lblStatusText.setText("System is ready to go...");
                        break;
                    case 100:
//                        Login login = new Login();
//                        login.setVisible(true);
                        LoginFrame loginFrame = new LoginFrame();
                        loginFrame.setVisible(true);
                        dispose();
                        break;
                    default:
                        break;
                }

                progress_value++;
            }

        });
        timer.start();
    }
}