package com.bookreviewboot.bookreviewboot.controller;

import com.bookreviewboot.bookreviewboot.domain.UserRequestDto;
import com.bookreviewboot.bookreviewboot.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

@RequiredArgsConstructor
@RestController
public class UserController {
    private final UserService service;

    @PostMapping("/join")
    public boolean joinUser(@RequestBody UserRequestDto dto){
        return service.joinUser(dto);
    }

    @PostMapping("/login")
    public boolean loginUser(@RequestParam String id, @RequestParam String pw, HttpServletRequest request){
        return service.loginUser(id,pw,request);
    }

}
