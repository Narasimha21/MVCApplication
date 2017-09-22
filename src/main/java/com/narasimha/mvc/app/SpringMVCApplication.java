package com.narasimha.mvc.app;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.support.SpringBootServletInitializer;

@SpringBootApplication
public class SpringMVCApplication extends SpringBootServletInitializer {

@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(SpringMVCApplication.class);
	}

	public static void main(String[] args) throws Exception {
		SpringApplication.run(SpringMVCApplication.class, args);
	}

}