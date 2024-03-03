/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Project;
import java.sql.*;
import javax.swing.JOptionPane;
/**
 *
 * @author DELL
 */
public class ConnectionProvider {
    static final String DB_URL = "jdbc:mysql://localhost/hostel";

static final String USERNAME = "root";
static final String PASSWORD = "";

Connection conn = null;
Statement stmt = null;

static Connection con=null;
  public static Connection getCon()
  {
     try
      {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hostel","root","");
        return con;
      }
      catch(Exception obj)
      {
          JOptionPane.showMessageDialog(null, obj.toString());
          return null;
      }
    }
}

  