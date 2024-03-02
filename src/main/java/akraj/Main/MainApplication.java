package akraj.Main;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
//import java.sql.*;
//import org.springframework.context.ConfigurableApplicationContext;

@SpringBootApplication

public class MainApplication {

	public static void main(String[] args) throws Exception {
		SpringApplication.run(MainApplication.class, args);
		// dataBaseController db = context.getBean(dataBaseController.class);
		// System.out.println("hello000000000000000000oo");
		// System.out.println(db.showDataByPartno(7));

	}

}
