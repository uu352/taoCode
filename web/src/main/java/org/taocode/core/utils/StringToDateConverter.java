package org.taocode.core.utils;

import java.text.ParseException;
import java.util.Date;

import org.apache.commons.lang3.time.DateUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.convert.converter.Converter;

/**
 * Converts a String to a java.util.Date.
 * 用于在起始时间作为条件查询时，将从前台传过来的字符串(要求格式为‘yyyy-MM-dd HH:mm:ss’)转换为日期类型。
 * 
 * @author liuwt, create on 2012-12-26 下午2:24:30
 *
 */
public class StringToDateConverter implements Converter<String, Date> {
	private static Logger logger = LoggerFactory
			.getLogger(StringToDateConverter.class);

	public Date convert(final String source) {
		Date date = null;
		try {
			date = DateUtils.parseDate(source, "yyyy-MM-dd HH:mm:ss");
		}
		catch (final ParseException e) {
			logger.error("failed convert String[" + source
					+ "] to java.util.Date...");
		}
		return date;
	}

}
