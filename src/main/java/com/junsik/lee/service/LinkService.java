package com.junsik.lee.service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.junsik.lee.model.LinkVo;
import com.mongodb.BasicDBList;
import com.mongodb.BasicDBObject;
import com.mongodb.CommandResult;
import com.mongodb.DBObject;

//@Repository
//@Component
@Service
public class LinkService {
	@Autowired
    private MongoTemplate mongoTemplate;
		
	public static final String COLLECTION_NAME = "linkVo";
	
	public void addLink(LinkVo link) {
        if (!mongoTemplate.collectionExists(COLLECTION_NAME)) {
            mongoTemplate.createCollection(COLLECTION_NAME);
        }
        
        link.setId(UUID.randomUUID().toString());
        mongoTemplate.insert(link, COLLECTION_NAME);
    }
     
    public List<LinkVo> listLink() {
        return mongoTemplate.findAll(LinkVo.class, COLLECTION_NAME);
    }
    
    public List<LinkVo> SearchList(String search) {
    	Query query = new Query();
    	Criteria title = Criteria.where("title").regex(search, "i");
    	Criteria contents = Criteria.where("contents").regex(search, "i");
    	Criteria tag = Criteria.where("tag").regex(search, "i");

    	Criteria andOr = new Criteria().orOperator(title, contents, tag);

    	query.addCriteria(andOr);
    	//query.skip(10);
    	query.limit(1000);
    	query.with(new Sort(Sort.Direction.DESC,"visitor"));
    	
    	return mongoTemplate.find(query, LinkVo.class, COLLECTION_NAME);
    }
    
    public List<LinkVo> SearchKeyWordList(String search) {
    	Query query = new Query();
    	Criteria keyword = Criteria.where("keyword").is(search);
    	query.addCriteria(keyword);
    	
    	//query.skip(10);
    	query.limit(1000);
    	query.with(new Sort(Sort.Direction.DESC,"visitor"));
    	
    	return mongoTemplate.find(query, LinkVo.class, COLLECTION_NAME);
    }
   
    public List<LinkVo> SearchIndexList(String search) {
    	
    	DBObject textSearchCommand = new BasicDBObject();
    	textSearchCommand.put("text", "Link");
    	textSearchCommand.put("search", search);
    	textSearchCommand.put("limit", 1000);
    	
    	CommandResult commandResult = mongoTemplate.executeCommand(textSearchCommand);
    	if(null == commandResult)
    		return null;
    	
    	BasicDBList results = (BasicDBList)commandResult.get("results");
    	
    	List<LinkVo> linkList = new ArrayList<LinkVo>();
    	ObjectMapper mapper = new ObjectMapper();
 	    mapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
    	
    	for( Iterator< Object > it = results.iterator(); it.hasNext(); )
    	{
    	    BasicDBObject result  = (BasicDBObject) it.next();
    	    //BasicDBObject dbo = (BasicDBObject) result.get("obj");
    	    //System.out.println(dbo.getString("Filename"));
    	    
    	    LinkVo linkvo = null;
    	    try {
				linkvo = mapper.readValue(result.getString("obj"), LinkVo.class);
			} catch (JsonParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (JsonMappingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
    	    
    	    if(linkvo != null)
    	    	linkList.add(linkvo);
     	   
    	}
    	
    	return linkList;
    }
    
     
    public void deleteLink(LinkVo link) {
        mongoTemplate.remove(link, COLLECTION_NAME);
    }
     
    public void updateLink(LinkVo link) {
        mongoTemplate.insert(link, COLLECTION_NAME);      
    }

}
