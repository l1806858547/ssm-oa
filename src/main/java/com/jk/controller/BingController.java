package com.jk.controller;

import java.util.ArrayList;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jk.service.BingService;

@Controller
@RequestMapping("bingController")
public class BingController extends BaseController{
	@Autowired
	private BingService bingService;
	@RequestMapping("queryBing")
	@ResponseBody
	public  Object queryBing(){
		
		//定义一个数组形式的list集合
		List<Map<String,Object>> listmap = new ArrayList<Map<String,Object>>();
		try {
			//这个是用map来接这个数组吧   他存储的是一个字符串和一个对象
			List<Map<String,Object>> list = bingService.queryBing();
			//遍历循环
			for (Map<String, Object> map : list) {
				//在这个里面new一个map对象
				Map<String, Object> map2 = new HashMap<String, Object>();
			 
				map2.put("name", map.get("月份")); //k值是前台我们需要展示的值    v值是从数据库中的查询出来的值
				map2.put("y", map.get("人数"));
				map2.put("sliced", false);
				map2.put("selected", false);
				listmap.add(map2);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return listmap;
	}
	
	@RequestMapping("queryYuan")
	@ResponseBody
	public Object queryYuan(){
		
		//定义一个数组形式的list集合
				List<Map<String,Object>> listmap = new ArrayList<Map<String,Object>>();
				try {
					//这个是用map来接这个数组吧   他存储的是一个字符串和一个对象
					List<Map<String,Object>> list = bingService.queryYuan();
					//遍历循环
					for (Map<String, Object> map : list) {
						//在这个里面new一个map对象
						Map<String, Object> map2 = new HashMap<String, Object>();
					 
						map2.put("name", map.get("月份")); //k值是前台我们需要展示的值    v值是从数据库中的查询出来的值
						map2.put("y", map.get("人数"));
						map2.put("sliced", false);
						map2.put("selected", false);
						listmap.add(map2);
					}
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return listmap;
	}
	
}
