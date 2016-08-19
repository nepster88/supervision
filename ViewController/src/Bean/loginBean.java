package Bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import oracle.adf.view.rich.component.rich.layout.RichPanelFormLayout;

import oracle.jdbc.OracleDriver;
import oracle.adf.model.BindingContext;
import oracle.adf.model.binding.DCBindingContainer;
 
import oracle.adf.model.binding.DCIteratorBinding;

public class loginBean {
    private String username, password;
    public int user_id;
    private RichPanelFormLayout uservoobj;

    public int getUser_id() {
        return user_id;
    }
    
    public void setUsername(String username) {
        this.username = username;
    }

    public String getUsername() {
        return username;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPassword() {
        return password;
    }
    
    public String doLogin() {
        return null;
    }
    
    public static Connection getConnection() throws SQLException {
        String username = "s3";
        String password = "s3";
        String thinConn = "jdbc:oracle:thin:@localhost:1521:XE";
        DriverManager.registerDriver(new OracleDriver());
        Connection conn =
            DriverManager.getConnection(thinConn, username, password);
        conn.setAutoCommit(false);
        return conn;
    }
    
    public String login_action() {
        // Add event code here...
        String user = this.getUsername();
        String pass = "";
        Connection conn;

        try {
            conn = getConnection();
            Statement stmt = conn.createStatement();
            ResultSet rset = stmt.executeQuery ("SELECT * FROM employees where login_user = '"+user+"'");
            if (rset.next())  { 
                user_id = rset.getInt("user_Id");
                pass = rset.getString("password");
                int type= rset.getInt("type");
                conn.close();
                if(password == pass)
                {
                    if(type == 3)
                        return "admin";
                    else if(type==2)
                        return "student";
                    else if(type == 1)
                        return "supervisor";
                    else 
                        return "error";
                }
            }
            conn.close();
            
        } catch (SQLException e) {
            System.out.println(e);
        }
        
        return "error";
    }
 
}
