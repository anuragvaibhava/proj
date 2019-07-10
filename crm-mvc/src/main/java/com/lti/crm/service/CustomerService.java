package com.lti.crm.service;

import java.util.List;

import com.lti.crm.model.Customer;

public interface CustomerService {
public void saveCustomer(Customer theCustomer);

public List<Customer> getCustomers();

public Customer getCustomer(int theId);
}
