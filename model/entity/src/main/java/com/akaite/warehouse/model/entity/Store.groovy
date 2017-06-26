package com.akaite.warehouse.model.entity

import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString

@EqualsAndHashCode
@ToString(includeNames = true, ignoreNulls = true)
class Store {
	
	Long uid
	User owner
	String title
	int length
	int height
	int width
	StoreType storeType
	double rating
	Location storeLocation
	int basePrice //price for 1m2 area of specific place
	String description
	StoreImage image

    Store(long storeId, User owner, StoreType storeType) {
        this.uid = storeId
        this.owner = owner
        this.storeType = storeType
    }
}
