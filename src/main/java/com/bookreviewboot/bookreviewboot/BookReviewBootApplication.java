package com.bookreviewboot.bookreviewboot;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;

@EnableJpaAuditing
@SpringBootApplication
public class BookReviewBootApplication {

    public static void main(String[] args) {
        SpringApplication.run(BookReviewBootApplication.class, args);
    }

}
