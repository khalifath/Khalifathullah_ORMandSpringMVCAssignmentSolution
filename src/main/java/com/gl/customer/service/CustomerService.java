package com.gl.customer.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.gl.customer.entity.Customer;


@Service
public interface CustomerService {

	public List < Customer > getCustomers();

	public void saveCustomer(Customer theCustomer);

	public Customer getCustomer(int theId);

	public void deleteCustomer(int theId);

}