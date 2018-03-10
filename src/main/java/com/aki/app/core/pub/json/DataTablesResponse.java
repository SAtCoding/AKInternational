package com.aki.app.core.pub.json;

import java.io.Serializable;
import java.util.List;

public class DataTablesResponse implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -4076548921884801333L;
	
	Long recordsTotal;

	Long recordsFiltered;

    int draw;

    List data;

	public Long getRecordsTotal() {
		return recordsTotal;
	}

	public void setRecordsTotal(Long recordsTotal) {
		this.recordsTotal = recordsTotal;
	}

	public Long getRecordsFiltered() {
		return recordsFiltered;
	}

	public void setRecordsFiltered(Long recordsFiltered) {
		this.recordsFiltered = recordsFiltered;
	}

	public int getDraw() {
		return draw;
	}

	public void setDraw(int draw) {
		this.draw = draw;
	}

	public List getData() {
		return data;
	}

	public void setData(List data) {
		this.data = data;
	}

}
