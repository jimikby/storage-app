package com.akaite.warehouse.model.entity

import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString

@EqualsAndHashCode
@ToString(includeNames = true, ignoreNulls = true)
class StoreOption {
    Long uid
    String name
    Store store

    StoreOption(long id, String name){
        this.uid = id
        this.name = name
    }
}
