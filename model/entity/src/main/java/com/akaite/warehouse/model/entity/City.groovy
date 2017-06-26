package com.akaite.warehouse.model.entity

import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString

@EqualsAndHashCode
@ToString(includeNames = true, ignoreNulls = true)
class City {

	Long uid
	Country country
	String cityName

    City(long cityId, Country country, String cityName) {
        this.uid = cityId
		this.country = country
		this.cityName = cityName
    }
}
