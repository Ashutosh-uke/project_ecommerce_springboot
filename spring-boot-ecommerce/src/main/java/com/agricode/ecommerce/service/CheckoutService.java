package com.agricode.ecommerce.service;

import com.agricode.ecommerce.dto.Purchase;
import com.agricode.ecommerce.dto.PurchaseResponse;

public interface CheckoutService {

    PurchaseResponse placeOrder(Purchase purchase);
}
