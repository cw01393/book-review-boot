package com.bookreviewboot.bookreviewboot.domain;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface UserRepository extends JpaRepository<User,Integer> {

    @Query(value = "select * from users where id=?1 limit 1",nativeQuery = true)
    public User findOneByStringId(String id);
}
