/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servicemaster.supportClasses;

import javax.swing.table.DefaultTableModel;

/**
 *
 * @author RuwanM
 */
public class TableModel extends DefaultTableModel {

    public TableModel(Object[][] rowData, Object[][] columnData) {
        super(rowData, columnData);
    }

    @Override
    public boolean isCellEditable(int row, int col) {
        return false;
    }
}
