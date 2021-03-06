package seschool.newsportal;

import java.util.Collections;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class NewsPortalWebApplication {

	public static void main(String[] args) {
		SpringApplication app = new SpringApplication(NewsPortalWebApplication.class);
		app.setDefaultProperties(Collections.singletonMap("server.servlet.context-path", "/"));
		app.run(args);
	}
}
