package Pm.Configuration;

import javax.persistence.EntityManager;
import javax.persistence.Persistence;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@ComponentScan("Pm")
public class Myclass1
{
	@Bean
	EntityManager manager() {
		return Persistence.createEntityManagerFactory("dev").createEntityManager();
	}
}
