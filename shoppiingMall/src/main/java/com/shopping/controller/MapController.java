package com.shopping.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping("/map/*")
public class MapController {
	
	private static final Logger logger = LoggerFactory.getLogger(MapController.class);
	
	/* 찾아오시는길  */
	@RequestMapping("map.do")
	public String map() throws Exception {
		return "map/map";
	}
	
}
