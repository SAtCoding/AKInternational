package com.aki.app.core.util.search;

import java.io.Serializable;
import java.util.List;

@SuppressWarnings("rawtypes")
public class SearchResult implements Serializable {

  /**
   * 
   */
  private static final long serialVersionUID = 3254538177179717928L;

  private long totalNoOfResults;

  private long startingResultNumber;

  private long endingResultNumber;


  private List resultsList;

  private SearchCriteria searchCriteria;

  public long getTotalNoOfResults() {
    return totalNoOfResults;
  }

  public void setTotalNoOfResults(long totalNoOfResults) {
    this.totalNoOfResults = totalNoOfResults;
  }

  public long getStartingResultNumber() {
    return startingResultNumber;
  }

  public void setStartingResultNumber(long startingResultNumber) {
    this.startingResultNumber = startingResultNumber;
  }

  public long getEndingResultNumber() {
    return endingResultNumber;
  }

  public void setEndingResultNumber(long endingResultNumber) {
    this.endingResultNumber = endingResultNumber;
  }

  public List getResultsList() {
    return resultsList;
  }

  public void setResultsList(List resultsList) {
    this.resultsList = resultsList;
  }

  public SearchCriteria getSearchCriteria() {
    return searchCriteria;
  }

  public void setSearchCriteria(SearchCriteria searchCriteria) {
    this.searchCriteria = searchCriteria;
  }


}
