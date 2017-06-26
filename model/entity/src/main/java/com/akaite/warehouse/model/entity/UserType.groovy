package com.akaite.warehouse.model.entity

import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString

@EqualsAndHashCode
@ToString(includeNames = true, ignoreNulls = true)
class UserType {

    Long uid
    String name

    UserType(Long id, String name){
        this.uid = id
        this.name = name
    }
}
