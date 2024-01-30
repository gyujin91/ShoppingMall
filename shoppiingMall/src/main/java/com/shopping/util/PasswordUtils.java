package com.shopping.util;

import java.util.Random;

public class PasswordUtils {
	private String generateRandomPassword() {
		// 비밀번호로 사용할 문자열 세트
		String characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
		
		// 랜덤한 비밀번호 길이 설정
		int length = 8;
		
		// 랜덤한 비밀번호 생성
	    StringBuilder password = new StringBuilder();
	    Random random = new Random();
	    for (int i = 0; i < length; i++) {
	        int index = random.nextInt(characters.length());
	        password.append(characters.charAt(index));
	    }

	    return password.toString();
	}
}
