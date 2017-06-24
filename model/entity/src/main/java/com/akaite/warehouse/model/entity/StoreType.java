package com.akaite.warehouse.model.entity;

import com.google.common.base.Function;

import java.util.Map;

import static com.google.common.collect.Lists.newArrayList;
import static com.google.common.collect.Maps.uniqueIndex;

public enum StoreType {
	ROOM("ROOM"), WAREHOUSE("WAREHOUSE");

	private String code;

	StoreType(final String type) {
		this.code = type;
	}

	private static Map<String, StoreType> codeToStoreType = uniqueIndex(newArrayList(values()),
			new Function<StoreType, String>() {
				@Override
				public String apply(final StoreType from) {
					return from.getCode();
				}
			});

	public String getCode() {
		return code;
	}

	public static StoreType fromString(final String code) {
		return codeToStoreType.get(code);
	}
}
