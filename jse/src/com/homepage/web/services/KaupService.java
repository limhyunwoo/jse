package com.homepage.web.services;

import org.apache.catalina.connector.Request;




public interface KaupService {

	
	public int getKaupIndex(double height, double weight);
	public String getResultMsg();
}

