package com.bookreviewboot.bookreviewboot.domain;

import lombok.Getter;
import lombok.NoArgsConstructor;

import javax.persistence.Column;

@Getter
@NoArgsConstructor
public class ReviewRequestDto {

    private int code;
    private String isbn, id, comment;

    public ReviewRequestDto(String isbn, String id, String comment){
        this.isbn = isbn;
        this.id = id;
        this.comment  = comment;
    }
}
