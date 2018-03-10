package com.aki.app.core.util.search;

import java.io.Serializable;

public class SearchCriteria implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String searchString="";

	/**
	 * The maximum page size of the search result list
	 */
	private int pageSize=10;

	/**
	 * The current page of the  result list.
	 */
	private int page=0;
	

	private long startingPageNumber=0;
	private long noOfPageLinksPerPage=2;
	
}
