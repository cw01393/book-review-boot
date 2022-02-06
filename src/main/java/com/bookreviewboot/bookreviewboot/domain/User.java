package com.bookreviewboot.bookreviewboot.domain;

import com.bookreviewboot.bookreviewboot.util.TimeStamped;
import lombok.Getter;
import lombok.NoArgsConstructor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Getter
@Table(name="users")
@NoArgsConstructor
@Entity
public class User extends TimeStamped {

    @Id
    @Column
    private int code;
    @Column
    private String id,pw,name;

    public User(UserRequestDto dto){
        this.id = dto.getId();
        this.pw = dto.getPw();
        this.name = dto.getName();
    }
}
