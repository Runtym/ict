package com.ict.test;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.apache.commons.lang3.StringUtils;

public class DepartService {
	private static DepartService ds;
	private List<HashMap<String,String>> departList;
	public static DepartService getDepartService() {
		if(ds==null) {
			ds = new DepartService();
		}
		return ds;
	}
	
	public List<HashMap<String,String>> getDepartList(){
		if(departList==null) {
			departList = 
			new ArrayList<HashMap<String,String>>();
			for(int i=1;i<=10;i++){
				HashMap<String,String> hm = new HashMap<String,String>();
				int rNum = (int)(Math.random()*20);
				hm.put("deName","ȫ�浿" + i);
				String deCode  = StringUtils.leftPad(rNum +"", 3,'0');
				hm.put("deCode",deCode);
				hm.put("deCnt",rNum + "");
				
				departList.add(hm);
			}
		}
		return departList;
	}

	public List<HashMap<String,String>> getDepartList(String[] types, String searchStr){
		if(types==null || departList==null) {
			return getDepartList();
		}
		
		List<HashMap<String,String>> departList2 = new ArrayList<HashMap<String,String>>(); 
		for(HashMap<String,String> hm : departList) {
			for(String type : types) {
				if(hm.get(type).indexOf(searchStr)!=-1) {
					if(departList2.indexOf(hm)==-1) {
						departList2.add(hm);
					}
				}
			}
		}
		return departList2;
	}

}
