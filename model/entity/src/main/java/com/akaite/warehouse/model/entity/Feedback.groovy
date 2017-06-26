package com.akaite.warehouse.model.entity

import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString

@EqualsAndHashCode
@ToString(includeNames = true, ignoreNulls = true)
class Feedback {
    Long uid
    User user
    String message
    User author

    Feedback(long id, User user, User author){
        this.uid = id
        this.user = user
        this.author = author
    }
}
