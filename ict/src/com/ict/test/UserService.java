package com.ict.test;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class UserService {

	public List<HashMap<String,String>> getUserList(){
		List<HashMap<String,String>> userList = 
		new ArrayList<HashMap<String,String>>();
		for(int i=1;i<=10;i++){
			HashMap<String,String> hm = new HashMap<String,String>();
			int rNum = (int)(Math.random()*100);
			hm.put("name","ȫ�浿" + i);
			hm.put("age",rNum +"");
			hm.put("id","polo" + i);
			hm.put("address","���� ���α� ���굿 " +rNum + "����");
			
			userList.add(hm);
		}
		return userList;
	}
}
