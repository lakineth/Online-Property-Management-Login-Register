package com.customer;

public class Customer {
	    
	    private int id;
		private String email;
	    private String phone;
	    private String uname;
	    private String name;
	    private String password;
	    
		public Customer(int id,String email, String phone,String name, String uname, String password) {
			
			this.id=id;
			this.email = email;
			this.phone = phone;
			this.name=name;
			this.uname = uname;
			this.password = password;
		}
		public int getId() {
			return id;
		}
		public String getEmail() {
			return email;
		}
	
		public String getPhone() {
			return phone;
		}
		public String getName() {
			return name;
		}
	
		public String getUname() {
			return uname;
		}
	
		public String getPassword() {
			return password;
		}
		
	    
	    
}
