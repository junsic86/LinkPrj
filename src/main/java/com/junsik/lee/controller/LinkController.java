package com.junsik.lee.controller;

import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StopWatch;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.junsik.lee.model.LinkVo;
import com.junsik.lee.service.LinkService;

@Controller
public class LinkController {
	private static final Logger logger = LoggerFactory.getLogger(LinkController.class);
	
	@Autowired
    private LinkService linkService;
	
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String search(String search, Model model) {
		logger.info("url /search - {}", search);
		
		StopWatch stopWatch = new StopWatch();
		stopWatch.start("search"); 
		List<LinkVo> linkList = linkService.SearchList(search);
		stopWatch.stop();
		
		int size = 0;
		if(linkList != null)
			size = linkList.size();
		
		model.addAttribute("linkList", linkList);
		model.addAttribute("search", search);
		model.addAttribute("linkListcount", size);
		model.addAttribute("time", stopWatch.getLastTaskTimeMillis()/1000.0);
			
		return "search";
	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index(Locale locale, Model model) {
		logger.info("url /main - {}", locale);		
		return "index";
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String add(String title, String content, String tag, String url, Model model) {
		logger.info("url /add - {}");
		
		logger.info("title - {}", title);	
		logger.info("content - {}", content);	
		logger.info("tag - {}", tag);	
		logger.info("url - {}", url);	
		
		if( null == title )
			model.addAttribute("addok", false);
		else
			model.addAttribute("addok", true);
		
		return "add";
	}

}
