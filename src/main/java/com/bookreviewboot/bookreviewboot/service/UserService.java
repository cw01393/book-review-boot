package com.bookreviewboot.bookreviewboot.service;

import com.bookreviewboot.bookreviewboot.domain.User;
import com.bookreviewboot.bookreviewboot.domain.UserRepository;
import com.bookreviewboot.bookreviewboot.domain.UserRequestDto;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.net.http.HttpRequest;

@RequiredArgsConstructor
@Service
public class UserService {
    private final UserRepository repo;

    public boolean joinUser(UserRequestDto dto){
        User user = getUserByStringId(dto.getId());
        if(user == null) {
            User newUser = new User(dto);
            repo.save(newUser);
            return true;
        }
        return false;
    }

    public User getUserByStringId(String id){
        return repo.findOneByStringId(id);
    }

    public boolean loginUser(String id, String pw, HttpServletRequest request) {
        User user = getUserByStringId(id);
        if (user.getPw().equals(pw)) {
            request.getSession().setAttribute("log", id);
            return true;
        }
        return false;
    }

}
