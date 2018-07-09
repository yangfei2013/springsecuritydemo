package com.xxx.security.test;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.MessageDigestPasswordEncoder;

@SuppressWarnings("deprecation")
public class PasswordEncoder {

	public static void main(String[] args) {
		org.springframework.security.crypto.password.PasswordEncoder encoder = PasswordEncoderFactories.createDelegatingPasswordEncoder();
		String password = "123456";
		String password2 = encoder.encode(password);
		System.out.println(password2);
        System.out.println(encoder.matches(password, password2));
        
        BCryptPasswordEncoder encoder2 = new BCryptPasswordEncoder();
        String password3 = encoder2.encode(password);
        System.out.println(password3);
        System.out.println(encoder2.matches(password, password3));
        
        MessageDigestPasswordEncoder md5 = new MessageDigestPasswordEncoder("MD5");
        String passwordMD5 = md5.encode(password);
        System.out.println(passwordMD5);
        System.out.println(md5.matches(password, passwordMD5));
	}

}
