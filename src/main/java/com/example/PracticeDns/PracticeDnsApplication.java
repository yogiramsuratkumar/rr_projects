package com.example.PracticeDns;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;

import java.security.Security;

@SpringBootApplication
@EnableScheduling
public class PracticeDnsApplication {

	public static void main(String[] args) {
		SpringApplication.run(PracticeDnsApplication.class, args);
	}
	@Scheduled(fixedRate = 1000) // Run every 1 second
	public void runSmallThread() {

		// Get the default value of networkaddress.cache.ttl
		String ttlValue = Security.getProperty("networkaddress.cache.ttl");

		if (ttlValue != null) {
			int defaultTTL = Integer.parseInt(ttlValue);
			System.out.println("Default networkaddress.cache.ttl value:::->" + defaultTTL);
		} else {
			System.out.println("networkaddress.cache.ttl is not set..");
		}

	}

}
