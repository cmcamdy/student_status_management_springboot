package com.manager.controller;

import com.manager.service.StatusService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

/**
 * Created by CHEN on 2020/6/17.
 */
@RestController
@CrossOrigin
public class StatusController {

    @Autowired
    StatusService statusService;


    @PostMapping("/Status/updateStatus")
    public boolean updateStatus(@RequestBody Map<String,Object> params){

       return statusService.updateStatus(params);
    }
}
