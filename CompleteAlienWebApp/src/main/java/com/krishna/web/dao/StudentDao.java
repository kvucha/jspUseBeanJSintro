package com.krishna.web.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.krishna.web.model.Student;

public class StudentDao {
	String url = "jdbc:oracle:thin:@localhost:1521:orclkris";
	String userName = "c##scott";
	String password = "PARAMora1";
	Connection conn = null;
	Statement stmt = null;
	ResultSet rslt = null;
	PreparedStatement pst = null;
	
	
	public void setStudent(Student std) {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, userName, password);
			stmt = conn.createStatement();
			
			String SQL_INSERT =   "INSERT INTO STUDENT (rollno,sname,marks) VALUES (?,?,?)";
			PreparedStatement pstmt = conn.prepareStatement(SQL_INSERT);
			
			pstmt.setInt(1, std.getRollno());
        	pstmt.setString(2, std.getSname());
			pstmt.setInt(3, std.getMarks());
			pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		finally {
			try {
				if  ( rslt != null ) {
					rslt.close();
					rslt = null;
				}
				if  ( stmt != null ) {
					stmt.close();
					stmt = null;
				}
				
				if  ( conn != null ) {
					conn.close();
					conn = null;
				}
				
				
			  }
			catch (Exception e) {
				System.out.println(e);
			}
			
		}

		

	}

}
