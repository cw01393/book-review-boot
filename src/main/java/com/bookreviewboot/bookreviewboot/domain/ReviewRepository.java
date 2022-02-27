package com.bookreviewboot.bookreviewboot.domain;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface ReviewRepository extends JpaRepository<Review,Integer> {

    @Query(value = "select * from reviews where isbn = ?1",nativeQuery = true)
    public List<Review> findAllByIsbn(String isbn);
}
