package com.junsik.lee.service;

import java.util.ArrayList;
import java.util.List;

import org.snu.ids.ha.index.Keyword;
import org.snu.ids.ha.index.KeywordExtractor;
import org.snu.ids.ha.index.KeywordList;
import org.springframework.stereotype.Service;

@Service
public class KeywordsService {
	private KeywordExtractor ke = new KeywordExtractor();
	
	public List<String> getKeyWords(String strValue) 
	{
		KeywordList kl = ke.extractKeyword(strValue, true);
	
		List<String> listkeywords= new ArrayList<String>();
		
		for( int i = 0; i < kl.size(); i++ ) {
			Keyword kwrd = kl.get(i);
			System.out.println(kwrd.getString() + "\t" + kwrd.getCnt());
			
			listkeywords.add( kwrd.getString());
		}
		
		return listkeywords;
	}

	
}
