package com.junsik.lee.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.junsik.lee.model.LinkModel;
import com.junsik.lee.service.LinkService;


@Controller
public class LinkController {
	private static final Logger logger = LoggerFactory.getLogger(LinkController.class);
	
	@Autowired
    private LinkService linkService;
	
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String search(Locale locale, Model model) {
		logger.info("url /search - {}", locale);
		
		List<LinkModel> linkList = linkService.listLink();
		
		model.addAttribute("linkList", linkList); 
		logger.info("size : " + linkList.size());
		
		return "search";
	}

}
