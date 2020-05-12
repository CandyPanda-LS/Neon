package com.neon.mainServices;

import java.sql.SQLException;
import java.util.ArrayList;

import com.neon.model.Customer;
import com.neon.util.CustomerDB;

public class CustomerServices implements CustomerServicesInterface{
	
	
	
	@SuppressWarnings("static-access")
	@Override
	public ArrayList<Customer> getCustomerDetails(String userEmail) {

		CustomerDB cus = new CustomerDB();
		ArrayList<Customer> customerDetails = new ArrayList<>();
		try {
			customerDetails = (ArrayList<Customer>)cus.getCustomerList(userEmail);
		}catch(ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return customerDetails;
	}
	
	
	@SuppressWarnings("static-access")
	@Override
	public ArrayList<Customer> getCustomerList() {

		CustomerDB cus = new CustomerDB();
		ArrayList<Customer> customerDetails = new ArrayList<>();
		try {
			customerDetails = (ArrayList<Customer>)cus.getCustomerList();
		}catch(ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return customerDetails;
	}
	
	

}
