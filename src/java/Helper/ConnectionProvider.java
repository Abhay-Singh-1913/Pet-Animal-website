/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Helper;

import java.sql.*;

/**
 *
 * @author harish shaikh
 */
public class ConnectionProvider {
    
    public static Connection con;
    public static Connection getConnection(){
        if(con==null)
            
            try{
                Class.forName("com.mysql.jdbc.Driver");
                con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pets","root","harish");
                
            } catch(Exception l){
                l.printStackTrace();
                
                
            }
        return con;
    }
    
}
