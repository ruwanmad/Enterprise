/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servicemaster.functions;

import com.servicemaster.configs.Configs;
import com.servicemaster.dialogs.InformationDialog;
import java.sql.Connection;
import java.util.HashMap;
import java.util.Map;
import javax.print.PrintService;
import javax.print.PrintServiceLookup;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JRExporter;
import net.sf.jasperreports.engine.JRExporterParameter;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.export.JRPrintServiceExporter;
import net.sf.jasperreports.engine.export.JRPrintServiceExporterParameter;
import net.sf.jasperreports.view.JasperViewer;
import org.apache.log4j.Logger;

/**
 *
 * @author RuwanM
 */
public class PrintFunctions {

    private static final Logger LOGGER = Logger.getLogger(PrintFunctions.class);

    public void printInvoice(String saleCode, String vehicleCode, boolean cash) {
        JdbcConnection jbConnection = new JdbcConnection();
        Connection connection = jbConnection.getConnection();

        if (connection != null) {
            String reportFile;
            if (vehicleCode != null) {
                if (cash) {
                    reportFile = "reports/cash invoice.jasper";
                } else {
                    reportFile = "reports/invoice_vehicle.jasper";
                }
            } else {
                if (cash) {
                    reportFile = "reports/cash invoice.jasper";
                } else {
                    reportFile = "reports/invoice_business_partner.jasper";
                }
            }

            Map map = new HashMap();
            map.put("serviceCode", saleCode);

            try {
                JasperPrint jasperPrint = JasperFillManager.fillReport(reportFile, map, connection);

                if (jasperPrint.getPages().isEmpty()) {
                    InformationDialog.showMessageBox("No pages for this print", "No Pages", null);
                } else {
                    if (Configs.viewBill == 1) {
                        JasperViewer.viewReport(jasperPrint, false);
                    }

                    if (Configs.printBill == 1) {
                        PrintService printService = PrintServiceLookup.lookupDefaultPrintService();
                        JRExporter exporter = new JRPrintServiceExporter();
                        exporter.setParameter(JRExporterParameter.JASPER_PRINT, jasperPrint);
                        exporter.setParameter(JRPrintServiceExporterParameter.PRINT_SERVICE_ATTRIBUTE_SET, printService.getAttributes());
                        exporter.setParameter(JRPrintServiceExporterParameter.DISPLAY_PAGE_DIALOG, false);
                        exporter.setParameter(JRPrintServiceExporterParameter.DISPLAY_PRINT_DIALOG, false);
                        exporter.exportReport();
                    }
                }
            } catch (JRException | NullPointerException ex) {
                LOGGER.error(ex);
            }
            jbConnection.closeConnection();
        }
    }
}
