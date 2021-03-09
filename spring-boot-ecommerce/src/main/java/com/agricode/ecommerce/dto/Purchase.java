package com.agricode.ecommerce.dto;

import com.agricode.ecommerce.entity.Address;
import com.agricode.ecommerce.entity.Customer;
import com.agricode.ecommerce.entity.Order;
import com.agricode.ecommerce.entity.OrderItem;
import lombok.Data;

import java.util.Set;

@Data
public class Purchase {

    private Customer customer;
    private Address shippingAddress;
    private Address billingAddress;
    private Order order;
    private Set<OrderItem> orderItems;

}