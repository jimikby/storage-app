package com.akaite.warehouse.model.entity;

import static com.google.common.collect.Lists.newArrayList;
import static com.google.common.collect.Maps.uniqueIndex;

import java.util.Map;

import com.google.common.base.Function;

public enum UserType {
	PLACE_RENTER("PLACE_RENTER"), PLACE_OWNER("PLACE_OWNER"), GUEST_USER("GUEST_USER");

	private String code;

	UserType(final String type) {
		this.code = type;
	}

	private static Map<String, UserType> codeToUserType = uniqueIndex(newArrayList(values()),
			new Function<UserType, String>() {
				@Override
				public String apply(final UserType from) {
					return from.getCode();
				}
			});

	public String getCode() {
		return code;
	}

	public static UserType fromString(final String code) {
		return codeToUserType.get(code);
	}
}
