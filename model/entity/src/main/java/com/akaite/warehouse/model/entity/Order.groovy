package com.akaite.warehouse.model.entity

import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString

@EqualsAndHashCode
@ToString(includeNames = true, ignoreNulls = true)
class Order {

	long uid
	User user
	Store store
	Date from
	Date to
	int length
	int height
	int width
	double price
	String status


    Order(long orderId) {
        this.uid = orderId
    }
}
