package com.junsik.lee.service;

import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.BasicQuery;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.junsik.lee.model.LinkModel;

//@Repository
//@Component
@Service
public class LinkService {
	@Autowired
    private MongoTemplate mongoTemplate;
	
	public static final String COLLECTION_NAME = "Link";
	
	public void addLink(LinkModel link) {
        if (!mongoTemplate.collectionExists(LinkModel.class)) {
            mongoTemplate.createCollection(LinkModel.class);
        }       
        //person.setId(UUID.randomUUID().toString());
        mongoTemplate.insert(link, COLLECTION_NAME);
    }
     
    public List<LinkModel> listLink() {
        return mongoTemplate.findAll(LinkModel.class, COLLECTION_NAME);
    }
    
    public List<LinkModel> SearchList(String search) {
    	Query query = new Query();
    	Criteria title = Criteria.where("title").regex(search, "i");
    	Criteria contents = Criteria.where("contents").regex(search, "i");
    	Criteria tag = Criteria.where("tag").regex(search, "i");
    	
    	Criteria andOr = new Criteria().orOperator(title, contents, tag);
    	
    	query.addCriteria(andOr);
    	
    	return mongoTemplate.find(query, LinkModel.class, COLLECTION_NAME);
    }
     
    public void deleteLink(LinkModel link) {
        mongoTemplate.remove(link, COLLECTION_NAME);
    }
     
    public void updateLink(LinkModel link) {
        mongoTemplate.insert(link, COLLECTION_NAME);      
    }

}
