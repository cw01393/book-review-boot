package com.bookreviewboot.bookreviewboot.service;

import com.bookreviewboot.bookreviewboot.domain.Review;
import com.bookreviewboot.bookreviewboot.domain.ReviewRepository;
import com.bookreviewboot.bookreviewboot.domain.ReviewRequestDto;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@RequiredArgsConstructor
@Service
public class ReviewService {
    private final ReviewRepository repo;

    public boolean saveReview(ReviewRequestDto dto){
        List<Review> reviews = getReviewsByIsbn(dto.getIsbn());
        for(Review r : reviews){
            if(r.getId().equals(dto.getId())){
                return false;
            }
        }
        Review newReview = new Review(dto);
        repo.save(newReview);
        return true;
    }

    public List<Review> getReviewsByIsbn(String isbn){
        return repo.findAllByIsbn(isbn);
    }

}
