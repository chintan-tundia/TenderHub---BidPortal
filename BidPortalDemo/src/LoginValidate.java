

import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class LoginValidate extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public LoginValidate() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String uname=request.getParameter("username");
		String password=request.getParameter("password");
		
		Connection con=null;
		PreparedStatement pst=null;
		ResultSet re=null;
		
		String url="jdbc:mysql://localhost/bidportal";
		String Driver="com.mysql.jdbc.Driver";
		String user="root";
		String pass="";
		PrintWriter out=response.getWriter();
		try{	
		Class.forName("com.mysql.jdbc.Driver");		
		con=DriverManager.getConnection(url,user,pass);		
		String sql="select * from users where username = ? and password = ?";
		pst=con.prepareStatement(sql);		
		pst.setString(1,uname);
		pst.setString(2,password);
		
		re=pst.executeQuery();
		if(re.next()){
		    out.println("CONNECTED!!!"); 
		}else{
		    out.println("LOGIN FAILED!!!");
		}
		} catch(Exception e){
		  
		   e.printStackTrace();
		}
	}

}
