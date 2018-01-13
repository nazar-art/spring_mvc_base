package com.pluralsight.sample;

import org.springframework.security.authentication.encoding.Md5PasswordEncoder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class HashDemo {
    public static void main(String[] args) {
        Md5PasswordEncoder passwordEncoder = new Md5PasswordEncoder();
        String hashedPass = passwordEncoder.encodePassword("OnTheRoad1955!", null);

        System.out.println(hashedPass);

        BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();
        String encodedPass = bCryptPasswordEncoder.encode("secret");
        System.out.println(encodedPass);
    }
}
