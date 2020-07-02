package com.manager.controller;

import com.manager.service.MajorService;
import com.manager.service.StudentInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * Created by CHEN on 2020/6/3.
 */
@RestController
@CrossOrigin
public class HelloController {

    @GetMapping("/hello")
    public String testHello(){
        return  "hello Springboot";
    }

}
