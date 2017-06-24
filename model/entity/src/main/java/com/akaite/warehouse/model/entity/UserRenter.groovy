package com.akaite.warehouse.model.entity

import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString

@EqualsAndHashCode
@ToString(includeNames = true)
class UserRenter extends User {

	List <Order> orderList

	UserRenter(long id) {
		super(id)
	}
}
