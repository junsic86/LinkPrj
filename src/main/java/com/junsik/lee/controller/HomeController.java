package com.junsik.lee.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Random;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.junsik.lee.model.LinkVo;
import com.junsik.lee.service.LinkService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
    private LinkService linkService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/main.do", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}. 검색", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		List<LinkVo> listLink= linkService.listLink();
		
		model.addAttribute("serverTime", formattedDate );
		model.addAttribute("personList", listLink); 
		
		logger.info("size : " + listLink.size());
		
		return "home";
	}
	
	@RequestMapping(value = "/add.do", method = RequestMethod.GET)
	public String home2(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}. 추가", locale);

		Random rand = new Random();
		
		for(int i = 0; i < 1; i++)
		{
			LinkVo modelLink = new LinkVo();
			modelLink.setTitle("강아지" + i);
			modelLink.setContents("Simply selects the home view to render by returning its name");
			modelLink.setUrl("https://www.google.co.kr");
			modelLink.setTag("한글, 하늘, 가나다라");
			modelLink.setVisitor(rand.nextInt(1287193));
			
			linkService.addLink(modelLink);
		}
		
		logger.info("Welcome home! The client locale is {}. 추가 완료", locale);
		
		return "home";
	}
}
