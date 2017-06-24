package com.akaite.warehouse.model.entity

class UserOwner extends User {
	
	List <Store> storeList

	UserOwner(long id) {
		super(id)
	}
}
