package org.taocode.core.persistence;

import org.taocode.core.utils.StringToDateConverter;
import org.springframework.core.convert.support.DefaultConversionService;

/**
 * 在原有DefaultConversionService的基础上增加自定义的一些数据类型转换服务
 * 
 * @author liuwt, create on 2012-12-26 下午2:47:37
 *
 */
public class ApplicationConversionService extends DefaultConversionService {

	public ApplicationConversionService() {
		super();
		//添加自己编写的converter
		this.addConverter(new StringToDateConverter());
	}

}
