import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.ServiceRegistryBuilder;

public class DatabaseCreator {

	public static void main(String[] args) {
		Configuration config = new Configuration().configure();

		ServiceRegistry serviceRegistry = new ServiceRegistryBuilder().applySettings(
		        config.getProperties()).buildServiceRegistry();

		    
		config.buildSessionFactory(serviceRegistry);
	}

}

