package Chhat;

import java.sql.*;          
import java.util.ArrayList;
import javax.swing.JOptionPane;

public class DBManager {
    private static final String DBDRIVER = "com.mysql.jdbc.Driver";
    private static final String DBURL = "jdbc:mysql://localhost:3306/chhat";
    private static final String DBUSER = "root";
    private static final String DBPASSWORD = "root";
    
    static{
        try{
            Class.forName(DBDRIVER);
        }catch(Exception ex){
            JOptionPane.showMessageDialog(null, "Unable to load MySql Driver\nCan not Continue", "Error", JOptionPane.ERROR_MESSAGE);
            System.exit(1);
        }
    }
    
    public static boolean authenticateUser(String e, String p)
    {
        boolean status = false;
        //String email = user.getEmail();
        //String pass = user.getPassword();
        
        try(Connection conn = DriverManager.getConnection(DBURL,DBUSER,DBPASSWORD)){           
            PreparedStatement st = conn.prepareStatement("Select * from users where email=? AND pass=?");
            st.setString(1, e);
            st.setString(2, p);
            ResultSet rs = st.executeQuery();
            if(rs.next())
                status = true;
        }
        catch(Exception ex){            
        }    
        return status;        
    }
    
    public static boolean addUser(User user){
        boolean status=false;
        
        try(Connection conn = DriverManager.getConnection(DBURL,DBUSER,DBPASSWORD)){           
            PreparedStatement st = conn.prepareStatement("Insert into users VALUES(?,?,?)");
            st.setString(1, user.getName());
            st.setString(2, user.getEmail());
            st.setString(3, user.getPassword());
            
            if(st.execute())
            {   status=true;
               
            
            }
        }catch(Exception e){}
        return status;
    }
    
    public static String getName(String e)
    {
        String str="";
        //String email = user.getEmail();
        //String pass = user.getPassword();
        
        try(Connection conn = DriverManager.getConnection(DBURL,DBUSER,DBPASSWORD)){           
            PreparedStatement st = conn.prepareStatement("Select * from users where email=?");
            st.setString(1, e);
            //st.setString(2, p);
            ResultSet rs = st.executeQuery();
            if(rs.next())
                return rs.getString(1);
        }
        catch(Exception ex){            
        }    
        return str;
        
    }
   
    
}