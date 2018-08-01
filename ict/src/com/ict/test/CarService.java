package com.ict.test;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CarService {
	private List<Map<String,String>> carList;
	
	public List<Map<String,String>> getCarList(){
		if(carList==null) {
			carList = new ArrayList<Map<String,String>>();
			for(int i=0;i<10;i++) {
				Map<String, String> car = new HashMap<String,String>();
				int rNum = (int)(Math.random()*1000);
				car.put("name", "�ҳ�Ÿ" + i);
				car.put("price", (rNum) * 1000 + "����");
				car.put("vendor", "����" + i);
				carList.add(car);
			}
		}
		return carList;
	}
}
