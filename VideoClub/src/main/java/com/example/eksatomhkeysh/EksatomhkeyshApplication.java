package com.example.eksatomhkeysh;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;

@SpringBootApplication
@EnableCaching
public class EksatomhkeyshApplication {

    public static void main(String[] args) {
        SpringApplication.run(EksatomhkeyshApplication.class, args);
    }

}
