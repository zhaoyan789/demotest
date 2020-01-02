/**
 * 
 */
package com.bot.service;

import java.util.List;
import java.util.Map;

/**
 * @author zhaoyan
 *
 * 2020年1月2日
 */
public interface AddressService {

	/**
	 * @param pid
	 * @return
	 */
	List<Map> queryById(Integer pid);

}
