package com.aki.app.core.util.helper;

import org.springframework.util.StringUtils;

public class StringHelper {

	
	public static String createQueryString(String inputString)
	{
		if (StringUtils.hasText(inputString))
		{ String str=inputString.toLowerCase();
			StringBuilder b=new StringBuilder(str);
			
			
			str=str.trim();
			str="'%"+str.replace(' ', '%') + "%'";
			str=str.replace('*', '%');
			
		
			
			return str;
			
		} else {
			return "'%'";
		}
		
	}
}
