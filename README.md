# 学生学籍管理系统后端说明

## 前言

- 学生学籍管理系统采用Springboot+vue开发，前后分离的设计使本项目有更好的可扩展性，该部分为学生管理系统后端，主要用到的技术栈有：Springboot，Mybatis，druid

## 如何启动？

- **下载**
	
- ```git clone git@github.com:ch98road/Springboot_student_status_management.git```
	
- **导入项目，等待插件安装完成**

- **导入数据库:data_student_manager.sql**

- **更改部分配置**

	- 文件地址：[src](https://github.com/ch98road/Springboot_student_status_management/tree/master/src)/[main](https://github.com/ch98road/Springboot_student_status_management/tree/master/src/main)/[resources](https://github.com/ch98road/Springboot_student_status_management/tree/master/src/main/resources)/**application.yml**

		| 配置名   | 配置内容                    |
		| -------- | --------------------------- |
		| username | your username               |
		| password | your password               |
		| url      | url to  your mysql database |

- 其他默认配置(默认值，可不更改)

	- druid

		| 配置名        | 配置内容 |
		| ------------- | -------- |
		| user.name     | docker   |
		| user.password | 123456   |
		
	- adminster
	
	  | 配置名   | 配置内容 |
		| -------- | -------- |
		| username | admin    |
		| password | 123456   |
	
- 启动
	- ```cd +your_project_root_path```
	- ```mvn spring-boot:run```(windows,linux环境请调到下文jar包启动)

## 如何打包？

- 清除之前的缓存
	- ```mvn package clean -Dmaven.test.skip=true```
- 重新打包
	- ```mvn package -Dmaven.test.skip=true```
- 成功后，你可以在target目录下找到对应的jar包

## 如何运行Jar包？

- 在确保服务器环境配置正常的情况下：
	- ```java -jar your_project_name_version.jar```



