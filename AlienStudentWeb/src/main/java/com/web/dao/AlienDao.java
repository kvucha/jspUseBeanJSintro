package com.web.dao;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.web.model.Alien;



public class AlienDao {
	String url = "jdbc:oracle:thin:@localhost:1521:orclkris";
	String userName = "c##scott";
	String password = "PARAMora1";
	Connection conn = null;
	Statement stmt = null;
	ResultSet rslt = null;
	PreparedStatement pst = null;

	public Alien getAlien(int aid) {
		Alien a = new Alien();
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, userName, password);
			stmt = conn.createStatement();
			String query = "select aid,aname,tech from alien where aid =" +aid;
			rslt = stmt.executeQuery(query);
			while (rslt.next()) {
				a.setAid(rslt.getInt("aid"));
				a.setAname(rslt.getString("aname"));
				a.setTech(rslt.getString("tech"));
			}

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

		return a;
		

	}
	
	
	
	
	public List<Alien> getAliens() {
		List<Alien> aList = new ArrayList<Alien>();
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, userName, password);
			stmt = conn.createStatement();
			String query = "select aid,aname,tech from alien " ;
			rslt = stmt.executeQuery(query);
			while (rslt.next()) {
				
				aList.add(new Alien(rslt.getInt("aid"), 
				                    rslt.getString("aname") , 
									rslt.getString("tech") ));
			}

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

		return aList;
		

	}
	
}
