package org.zerock.domain;

import lombok.Data;

@Data
public class Criteria {

	private int page;
	private String type, keyword;

	public Criteria() {
		this.page = 1;
	}

	public Criteria(int page) {

		this.page = page;
	}

	public int getSkip() {
		return (this.page - 1) * 10;

	}

	public String[] getArr() {
		if (type == null) {
			return null;
		}
		return this.type.split("");
	}
}
