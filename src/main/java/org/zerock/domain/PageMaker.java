package org.zerock.domain;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

import lombok.Data;

@Data
public class PageMaker {

	private boolean prev, next;
	private int page, start, end, total;

	private Criteria cri;

	public PageMaker(Criteria cri, int total) {
		this.cri = cri;
		this.total = total;
		this.page = cri.getPage() > 0 ? cri.getPage() : 1;

		int tempLast = (int) (Math.ceil(page / 10.0) * 10);

		this.start = tempLast - 9;

		prev = (start != 1);// true

		if (tempLast * 10 >= total) {
			tempLast = (int) (Math.ceil(total / 10.0));

		} else {
			this.next = true;
		}
		this.end = tempLast;
	}
	
	public String makeQuery(int page) {
		 UriComponents uriComponents =
	                UriComponentsBuilder.newInstance().queryParam("page", page).
	                build();
	                return uriComponents.toUriString();
	                }
		
	
	
	public String makeSearch(int page) {
        if(cri.getKeyword()!=null || cri.getType()!=null) {
        
        UriComponents uriComponents =
                UriComponentsBuilder.newInstance().queryParam("page", page).
                queryParam("type", cri.getType()).
                queryParam("keyword", encoding(cri.getKeyword())).build();
        return uriComponents.toUriString();}
        
        else {UriComponents uriComponents =
                UriComponentsBuilder.newInstance().queryParam("page", page).
                build();
        return uriComponents.toUriString();}
                    
    }
    
    private String encoding(String keyword) {
        if(keyword == null || keyword.trim().length()==0) {
            return "";
        }
        try {
            return URLEncoder.encode(keyword,"UTF-8");
        }catch(UnsupportedEncodingException e) {
            return "";
        }
    }

}
