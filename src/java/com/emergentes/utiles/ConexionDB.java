
package com.emergentes.utiles;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class ConexionDB {
    
    static String driver = "com.mysql.jdbc.Driver";
    static String url = "jdbc:mysql://localhost:3306/practica4";
    static String usuario = "root";
    static String password = "";
    
 public Connection conn = null;
 
 public ConexionDB(){
     
     try {
         Class.forName(driver);
         conn = DriverManager.getConnection(url,usuario,password);
         
         if (conn != null) {
             System.out.println("Conexion exitosa");
         }
     
     } catch (ClassNotFoundException e) {
         System.out.println("falta especificar el driver"+ e.getMessage());
      }catch(SQLException e){
          System.out.println("Error al abrir la bd" +e.getMessage());
      }
 }
 
   public Connection conectar(){
       return conn;
   }
   public void desconectar(){
       try {
           conn.close();
       } catch (SQLException ex) {
           System.out.println("Error al cerrar la bd" + ex.getMessage());
       }
   }
   
}
