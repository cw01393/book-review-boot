package com.bookreviewboot.bookreviewboot.controller;

import com.bookreviewboot.bookreviewboot.domain.Review;
import com.bookreviewboot.bookreviewboot.domain.ReviewRequestDto;
import com.bookreviewboot.bookreviewboot.service.ReviewService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RequiredArgsConstructor
@RestController
public class ReviewController {
    private final ReviewService service;

    @PostMapping("/save")
    public boolean saveReview(@RequestBody ReviewRequestDto dto){
        return service.saveReview(dto);
    }
    @PostMapping("/getReviews")
    public List<Review> getReviews(String isbn){
        return service.getReviewsByIsbn(isbn);
    }
}
