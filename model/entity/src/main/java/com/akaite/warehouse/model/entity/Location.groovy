package com.akaite.warehouse.model.entity

import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString

@EqualsAndHashCode
@ToString(includeNames = true, ignoreNulls = true)
class Location {

    long uid
	City city
	String adress

    Location(long locationId, City city) {
        this.uid = locationId
        this.city = city
    }
}
