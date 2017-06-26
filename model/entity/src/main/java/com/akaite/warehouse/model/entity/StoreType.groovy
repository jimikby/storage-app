package com.akaite.warehouse.model.entity

import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString

@EqualsAndHashCode
@ToString(includeNames = true, ignoreNulls = true)
class StoreType {

    Long uid
    String name

    StoreType(Long id, String name){
        this.uid = id
        this.name = name
    }
}
