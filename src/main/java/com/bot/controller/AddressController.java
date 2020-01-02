/**
 * 
 */
package com.bot.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bot.service.AddressService;

/**
 * @author zhaoyan
 *
 * 2020年1月2日
 */

@Controller
public class AddressController {
	
	@Autowired
	private AddressService addressService;
	
	@RequestMapping("address")
	@ResponseBody
	public List<Map> showAddress(@RequestParam(name = "pid" , defaultValue = "1") Integer pid){
		
		System.out.println(pid);
		
		return addressService.queryById(pid);
	}
	

}
