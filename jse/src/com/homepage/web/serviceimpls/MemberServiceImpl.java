package com.homepage.web.serviceimpls;


import java.util.HashMap;
import java.util.Map;

import com.homepage.web.beans.MemberBean;
import com.homepage.web.services.MemberService;


public class MemberServiceImpl implements MemberService{

	Map<String, Object> map = new HashMap<String, Object>();
	
//	MemberVO vo = new MemberVO();
	String id = null;
	String password = null;
	String address = null;
	int age = 0;
	String name = null;
	String a;
	
	/*
	 * 회원가입 기능을 하는 메소드
	 * HashMap을 해야  id값을 가지고  password를 호출하겠구나..
	 * 
	 */
	@Override
	public void join(String id, String password, String name, int age, String addr) {
		
		/*
		 * 이 패턴은 DB에 저장하는 패턴과 일치한다.
		 * 즉, 값을 활용하면서 오염되거나 변질될 수 있기에
		 * 가장 먼저 순수값을 DB에 저장하고 본다.
		 */
		MemberBean vo = new MemberBean();
		
		
		

		
		/*
		 * 1. 첫 번째 에러 유형
		 * map.put(vo.getId(), vo.getPassword())
		 */
		vo.setName(name);
		vo.setAddress(address);
		vo.setAge(age);
		vo.setPassword(password);
		vo.setId(id);
		
		
		map.put("id", vo.getId());
		map.put("password", vo.getPassword());
		map.put("name", vo.getName());
		// 키와 밸류 패턴에서 밸류값을 String으로 통일시키려고
		// int 타입으로 들어온 age를 String 타입으로 변환하였다.
		map.put("age", String.valueOf(vo.getAge()));
		map.put("addr", vo.getAddress());
		
		/*
		 * 2. 두 번째 에러 유형
		 * map.put("age", vo.getAge());
		 */
	}

	/*
	 * 회원가입 후 로그인 기능을 하는 메소드
	 * 별다른 말이 없으니까..
	 * 로그인 성공, 실패 메시지까지 여기에서 마감지어야 함.
	 */
	
	
	
	/*
	 * 출력문 예시
	 * (1) 입력하신 ID는 존재하지 않거나 일치하지 않습니다.
	 * (2) 비번이 다릅니다. 다시 입력하세요.
	 * (3) 환영합니다. 서울시에 사는 20세 홍길동님 ..
	 */
	@Override
	public String login(String id, String password) {
	
		/*
		 * 3. 세 번째 에러 유형
		 * map.get(id) => 파라미터 유형은 반드시 String으로 해야 함.
		 */
		if(map.get("id").equals(id) && map.get("password").equals(password)){
			return "0";
			
//			System.out.println("환영합니다. " + map.get("address") + "에 사는 " + map.get("age") + "세 " + map.get("name") + "님 ..");
		}else if( !(map.get("id").equals(id)) && map.get("password").equals(password) ){
			return "1";
//			System.out.println("입력하신 ID는 존재하지 않거나 일치하지 않습니다.");
			
		}else{
			return  "2";
//			System.out.println("비번이 다릅니다. 다시 입력하세요.");
		}
			
	}

}