package com.agricode.ecommerce.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.agricode.ecommerce.entity.Order;

public interface OrderRepository extends JpaRepository<Order, Long> {

}
