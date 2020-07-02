package com.manager.controller;

import com.manager.service.MajorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;

/**
 * Created by CHEN on 2020/6/17.
 */
@RestController
@CrossOrigin
public class MajorController {
    @Autowired
    MajorService majorService;

    @PostMapping("/getMajor")
    public HashMap getMajor(){
        return majorService.getMajor();
    }
}
