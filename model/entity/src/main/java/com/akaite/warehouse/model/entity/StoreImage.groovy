package com.akaite.warehouse.model.entity

import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString

@EqualsAndHashCode
@ToString(includeNames = true, ignoreNulls = true)
class StoreImage {

    long uid
    String imageURL
    Store store

    StoreImage(long imageId, Store store){
        this.uid = imageId
        this.store = store
    }
}
