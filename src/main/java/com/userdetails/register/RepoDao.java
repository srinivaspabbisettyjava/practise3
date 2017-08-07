package com.userdetails.register;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;



public class RepoDao {
	
	static Connection con=null;
	public static final String CREATE_TABLE="Create table details(firstname character varying(40)NOT NULL,lastname character varying(40)NOT NULL,email character varying(40)NOT NULL,password character varying(40)NOT NULL,confirmpassword character varying(40)NOT NULL,dob character varying(40)NOT NULL,gender character varying(40)NOT NULL,mobilenumber character varying(40)NOT NULL,address1 character varying(40)NOT NULL,address2 character varying(40)NOT NULL,city character varying(40)NOT NULL,state character varying(40)NOT NULL,country character varying(40)NOT NULL,zipcode character varying(40)NOT NULL,altmail character varying(40)NOT NULL)";
	public static final String INSERT_DETAILS="INSERT INTO details values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	
	
	public void getConnection(){
		
		try {
			Class.forName("org.postgresql.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			con=DriverManager.getConnection("jdbc:postgresql://127.0.0.1:5432/bellinfojdbc", "postgres", "srinivasP9$");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public boolean createRegistration(){
		boolean result=false;
		Statement stmt=null;
		Statement stmt2=null;
		boolean isTableExist=false;
		ResultSet rs;
		
		try {
			
			getConnection();
			stmt2=con.createStatement();
			stmt=con.createStatement();
			rs = stmt2.executeQuery("SELECT EXISTS(SELECT 1 FROM pg_tables WHERE schemaname='public' AND tablename='details')");
			
			while(rs.next()){
				isTableExist=rs.getBoolean(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		if(!isTableExist){
			try {
				result=stmt.execute(CREATE_TABLE);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		try {
			stmt.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
		
	}
	
	public int saveRegistrationDetails(Details details){
		int result=0;
		PreparedStatement ps=null;
		
		
		getConnection();
		try {
			ps=con.prepareStatement(INSERT_DETAILS);
			ps.setString(1, details.getFirstname());
			ps.setString(2, details.getLastname());
			ps.setString(3, details.getEmail());
			ps.setString(4, details.getPassword());
			ps.setString(5, details.getConfirmpassword());
			ps.setString(6, details.getDob());
			ps.setString(7, details.getGender());
			ps.setString(8, details.getMobilenumber());
			ps.setString(9, details.getAddress1());
			ps.setString(10, details.getAddress2());
			ps.setString(11, details.getCity());
			ps.setString(12, details.getState());
			ps.setString(13, details.getCountry());
			ps.setString(14, details.getZipcode());
			ps.setString(15, details.getAltemail());
			
			
			result=ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			ps.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
		
	}
	

}
