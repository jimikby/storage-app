package com.akaite.warehouse.model.entity

import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString

@EqualsAndHashCode
@ToString(includeNames = true, ignoreNulls = true)
class Country {

	long uid
	String countryName

    Country(long countryId, String countryName) {
        this.uid = countryId
        this.countryName = countryName
    }
}
