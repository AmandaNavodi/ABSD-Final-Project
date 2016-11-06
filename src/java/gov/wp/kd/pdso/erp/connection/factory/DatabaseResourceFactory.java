/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gov.wp.kd.pdso.erp.connection.factory;

import gov.wp.kd.pdso.erp.connection.dbconnection.DBResourceConnection;
import gov.wp.kd.pdso.erp.connection.dbconnection.impl.MysqlDBResourceConnectionImpl;

/**
 *
 * @author nisalsp9
 */
public class DatabaseResourceFactory {
    
    public static DBResourceConnection getResourceFactory(){
    
        return new MysqlDBResourceConnectionImpl();
    
    }
    
}
