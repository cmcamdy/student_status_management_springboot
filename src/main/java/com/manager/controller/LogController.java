package com.manager.controller;

import com.manager.service.LogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.Map;

/**
 * Created by CHEN on 2020/6/21.
 */
@RestController
@CrossOrigin
public class LogController {


    @Autowired
    LogService logService;

    @PostMapping("/getLog")
    public  Map<String,Object> get_log(@RequestBody Map<String,Object> params){
        return logService.getLog(params);
    }

}
