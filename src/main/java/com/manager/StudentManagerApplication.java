package com.manager;

import org.mybatis.spring.annotation.MapperScan;
		import org.springframework.boot.SpringApplication;
		import org.springframework.boot.autoconfigure.SpringBootApplication;
		import org.springframework.boot.web.servlet.ServletComponentScan;
		import org.springframework.cache.annotation.EnableCaching;

@EnableCaching//开启缓存
@SpringBootApplication
@MapperScan(basePackages = {"com.manager.mapper"})
@ServletComponentScan
public class StudentManagerApplication {
	public static void main(String[] args) {
		SpringApplication.run(StudentManagerApplication.class, args);
	}
}
