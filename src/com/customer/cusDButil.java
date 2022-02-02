package com.customer;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



public class cusDButil {
	
	private static Connection con = null;
	private static Statement stat = null;
	private static ResultSet res = null;
	private static boolean isSuccess;
	
	//login validate
public static boolean validate(String uname, String password) {
	
	
	
		try {
			con = DBConnection.getConnection();
			stat = con.createStatement();
			String sql = "select * from customer where username='"+uname+"' and password='"+password+"'";
			res = stat.executeQuery(sql); 
			
			if (res.next()) {
			   isSuccess = true;
		
			}else {
				isSuccess = false;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	
		return isSuccess;
	}

     //display account details
    public static List<Customer> getCustomer(String uname){
    	
    	ArrayList<Customer> customer= new ArrayList<>();
    	
    	try {
    		con = DBConnection.getConnection();
			stat = con.createStatement();
			String sql = "select * from customer where username='"+uname+"'";
		    res = stat.executeQuery(sql); 
		    
		    while(res.next()) {
		    	int id = res.getInt(1);
		    	String email = res.getString(2);
		    	String phone = res.getString(3);
		    	String fname= res.getString(4);
		    	String name = res.getString(5);
		    	String pass = res.getString(6);
		    	
		    	Customer cust = new Customer(id,email,phone,fname,name,pass);
		    	customer.add(cust);
		    }
    	
    	}catch(Exception e){
    		
    	}
    	return customer;
    }
	
	 //insert account data
	public static boolean registercus(String email, String phone,String name, String uname, String password ) {
		boolean isSuccess = false;
		
		
		
		try {
		    con = DBConnection.getConnection();
		    stat = con.createStatement();
			String sql = "insert into customer values(0,'"+email+"','"+phone+"','"+name+"','"+uname+"','"+password+"')";
			int res = stat.executeUpdate(sql);
			
			if(res>0) {
				isSuccess  = true;
			}else {
				isSuccess = false;
			}
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	//edit account data
	public static boolean cusupdate(String id,String email,String phone,String name,String uname,String password) {
		
		
		try {
			 con = DBConnection.getConnection();
			 stat = con.createStatement();
			 String sql ="update customer set email='"+email+"',phone='"+phone+"',fullname='"+name+"',username='"+uname+"',password='"+password+"'" +"where id='"+id+"'";
			 				 
			 int res= stat.executeUpdate(sql);
			 
			 if(res > 0) {
				 isSuccess = true;
			 }else {
				 isSuccess = false;
			 }
			 
			
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
   //display edited account data
   public static List<Customer> getCustomerDetails(String id) {
   	
   	int convertedID = Integer.parseInt(id);
   	
   	ArrayList<Customer> cust = new ArrayList<>();
   	
   	try {
   		
   		con = DBConnection.getConnection();
   		stat = con.createStatement();
   		String sql = "select * from customer where id='"+convertedID+"'";
   		res = stat.executeQuery(sql);
   		
   		while(res.next()) {
   			int id1 = res.getInt(1);
   			String email = res.getString(2);
   			String phone = res.getString(3);
   			String fname = res.getString(4);
   			String name = res.getString(5);
   			String pass = res.getString(6);
   			
   			Customer cu = new Customer(id1,email,phone,fname,name,pass);
   			cust.add(cu);
   		}
   		
   	}
   	catch(Exception e) {
   		e.printStackTrace();
   	}	
   	return cust;	
   }
   
   //delete account
   public static boolean cusdelete(String id) {
	   
	   int convertedID = Integer.parseInt(id);
	   
	   try {
		   con = DBConnection.getConnection();
	   	   stat = con.createStatement();
	   	   String sql ="delete from customer where id='"+convertedID+"'";
	   	   int res =stat.executeUpdate(sql);
	   	   
	   	   if(res > 0) {
	   		   isSuccess = true;
	   	   }else {
	   		   isSuccess = false;
	   	   }
		   
	   }catch(Exception e){
		   e.printStackTrace();
	   }
	   
	   return isSuccess;
   }
   
}
