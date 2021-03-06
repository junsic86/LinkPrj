package com.junsik.lee.model;

import java.util.List;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.index.CompoundIndex;
import org.springframework.data.mongodb.core.index.CompoundIndexes;
import org.springframework.data.mongodb.core.index.Indexed;
import org.springframework.data.mongodb.core.mapping.Document;

@Document
@CompoundIndexes({
    @CompoundIndex(name = "keyword_inx", def = "{'keyword': 1}")
})
public class LinkVo {
	@Id
	private String id;
	private String time;
	private String title;
	private String contents;
	private String tag;
	private String url;
	private int visitor;
	
	@Indexed
	private List<String> keyword;
	
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getTag() {
		return tag;
	}
	public void setTag(String tag) {
		this.tag = tag;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public int getVisitor() {
		return visitor;
	}
	public void setVisitor(int visitor) {
		this.visitor = visitor;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public List<String> getKeyword() {
		return keyword;
	}
	public void setKeyword(List<String> keyword) {
		this.keyword = keyword;
	}
}
