package com.bookreviewboot.bookreviewboot.domain;

import com.bookreviewboot.bookreviewboot.util.TimeStamped;
import lombok.Getter;
import lombok.NoArgsConstructor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Getter
@Table(name="reviews")
@NoArgsConstructor
@Entity
public class Review extends TimeStamped {

    @Id
    @Column
    private int code;
    @Column
    private String isbn, id, comment;

    public Review(ReviewRequestDto dto){
        this.isbn = dto.getIsbn();
        this.id = dto.getId();
        this.comment = dto.getComment();
    }
}
