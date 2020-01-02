/**
 * 
 */
package com.bot.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bot.mapper.AddressMapper;
import com.bot.service.AddressService;

/**
 * @author zhaoyan
 *
 * 2020年1月2日
 */
@Service
public class AddressServiceImpl implements AddressService {

	@Autowired
	private AddressMapper addressMapper;
	
	
	@Override
	public List<Map> queryById(Integer pid) {
		// TODO Auto-generated method stub
		return addressMapper.queryById(pid);
	}

}
