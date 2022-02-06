package com.bookreviewboot.bookreviewboot.domain;

import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
public class UserRequestDto {

    private int code;
    private String id,pw,name;

    public UserRequestDto(String id, String pw, String name){
        this.id = id;
        this.pw = pw;
        this.name = name;
    }
}
