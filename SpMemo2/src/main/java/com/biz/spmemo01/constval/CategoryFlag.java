package com.biz.spmemo01.constval;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public class CategoryFlag {

	//					Key		Value
	public static final Map<String, String> CAT_MAP;	// 선언부
	public static final Map<String, String> FLAG_MAP;
	
	// static으로 선언된 객체(CAT_MAP, FLAG_MAP)
	static {
		Map<String, String> tempMap = new HashMap<String, String>();	// 생성
		tempMap.put("CAT_THINK", "생각");
		tempMap.put("CAT_WORK", "할일");
		tempMap.put("CAT_PROMIST", "약속");
		tempMap.put("CAT_VISIT", "방문");
		tempMap.put("CAT_ETC", "기타");
		
		CAT_MAP = Collections.unmodifiableMap(tempMap);
		
	}
	
	static {
		Map<String, String> tempMap = new HashMap<String, String>();	// 생성
		tempMap.put("FLAG_TOP", "중요");
		tempMap.put("FLAG_MID", "보통");
		tempMap.put("FLAG_LOW", "일반");
		
		FLAG_MAP = Collections.unmodifiableMap(tempMap);
		
	}
}
