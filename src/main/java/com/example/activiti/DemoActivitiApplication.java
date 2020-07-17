package com.example.activiti;


import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.transaction.annotation.EnableTransactionManagement;


// Mybatis
@MapperScan("com.example.activiti.**.mapper")
// Activiti5.22需要排除
@SpringBootApplication(exclude = {
        org.activiti.spring.boot.SecurityAutoConfiguration.class,
        org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration.class
})
@EnableAsync
@EnableTransactionManagement //启用事务
@ComponentScan(basePackages={"com.example"})
public class DemoActivitiApplication {

    public static void main(String[] args) {

        SpringApplication.run(DemoActivitiApplication.class, args);
    }

}
