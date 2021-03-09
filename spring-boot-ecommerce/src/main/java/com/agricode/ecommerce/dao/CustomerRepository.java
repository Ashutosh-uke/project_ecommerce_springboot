package com.agricode.ecommerce.dao;

import com.agricode.ecommerce.entity.Customer;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CustomerRepository extends JpaRepository<Customer, Long> {
	Customer findByEmail(String theEmail);
}