/**
 * 
 */
package com.bot.mapper;

import java.util.List;
import java.util.Map;

/**
 * @author zhaoyan
 *
 * 2020年1月2日
 */
public interface AddressMapper {

	/**
	 * @param pid
	 * @return
	 */
	List<Map> queryById(Integer pid);

}
