package com.akaite.warehouse.model.entity

import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString

@EqualsAndHashCode 
@ToString(includeNames = true, ignoreNulls = true)
class User {

	Long uid
	String userName
	String photo_Url
	String userEmail
	String password
	String firstName
	String lastName
	UserType userType
	Location location

	User (long id){
		this.uid = id
	}
}
