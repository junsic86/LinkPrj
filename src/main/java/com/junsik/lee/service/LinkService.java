package com.junsik.lee.service;

import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.junsik.lee.model.LinkModel;

//@Repository
@Component
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
     
    public void deleteLink(LinkModel link) {
        mongoTemplate.remove(link, COLLECTION_NAME);
    }
     
    public void updateLink(LinkModel link) {
        mongoTemplate.insert(link, COLLECTION_NAME);      
    }

}
