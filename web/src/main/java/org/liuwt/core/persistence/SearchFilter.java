package org.liuwt.core.persistence;

import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import org.apache.commons.lang3.StringUtils;

import com.google.common.collect.Lists;

public class SearchFilter {

	public enum Operator {
		EQ, LIKE, GT, LT, GTE, LTE
	}

	public String fieldName;
	public Object value;
	public Operator operator;

	public SearchFilter(final String fieldName, final Operator operator,
			final Object value) {
		this.fieldName = fieldName;
		this.value = value;
		this.operator = operator;
	}

	public static List<SearchFilter> parse(
			final Map<String, Object> filterParams) {
		final List<SearchFilter> filters = Lists.newArrayList();

		for (final Entry<String, Object> entry : filterParams.entrySet()) {
			final String[] names = StringUtils.split(entry.getKey(), "_");
			if (names.length != 2) {
				throw new IllegalArgumentException(entry.getKey()
						+ " is not a valid search filter name");
			}
			if (StringUtils.isBlank((String) entry.getValue())) {
				continue;
			}
			final SearchFilter filter = new SearchFilter(names[1],
					Operator.valueOf(names[0]), entry.getValue());
			filters.add(filter);
		}
		return filters;
	}
}
