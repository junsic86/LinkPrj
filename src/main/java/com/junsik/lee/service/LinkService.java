package com.junsik.lee.service;

import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Order;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Service;

import com.junsik.lee.model.LinkVo;

//@Repository
//@Component
@Service
public class LinkService {
	@Autowired
    private MongoTemplate mongoTemplate;
	
	public static final String COLLECTION_NAME = "Link";
	
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
    	//query.limit(10);
    	query.with(new Sort(Sort.Direction.DESC,"visitor"));
    	
    	return mongoTemplate.find(query, LinkVo.class, COLLECTION_NAME);
    }
     
    public void deleteLink(LinkVo link) {
        mongoTemplate.remove(link, COLLECTION_NAME);
    }
     
    public void updateLink(LinkVo link) {
        mongoTemplate.insert(link, COLLECTION_NAME);      
    }

}
