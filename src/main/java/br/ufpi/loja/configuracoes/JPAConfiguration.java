package br.ufpi.loja.configuracoes;

import java.util.Properties;

import javax.persistence.EntityManagerFactory;

import org.springframework.context.annotation.Bean;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.JpaVendorAdapter;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.orm.jpa.vendor.HibernateJpaVendorAdapter;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import br.ufpi.loja.utilidades.Constantes;

/**
 * Classe que faz a configuracao de acesso ao Banco de dados via ORM
 * @author armandosoaressousa
 *
 */
@EnableTransactionManagement
public class JPAConfiguration {
	
	@Bean //para ser reconhecido pelo Spring
	public LocalContainerEntityManagerFactoryBean EntityManagerFactory(){
		LocalContainerEntityManagerFactoryBean factoryBean = new LocalContainerEntityManagerFactoryBean();
		
		JpaVendorAdapter vendorAdpter = new HibernateJpaVendorAdapter();
		factoryBean.setJpaVendorAdapter(vendorAdpter);
		
		DriverManagerDataSource dataSource = new DriverManagerDataSource();  
		dataSource.setUsername(Constantes.DATABASE_USER);
		dataSource.setPassword(Constantes.DATABASE_USER_PASSWORD);
		dataSource.setUrl(Constantes.DATABASE_URL);
		dataSource.setDriverClassName(Constantes.DATABASE_DRIVER);
		
		//carrega informacoes do dataSource
		factoryBean.setDataSource(dataSource);
		
		Properties propriedadesHibernate = new Properties();
		propriedadesHibernate.setProperty(Constantes.ORM_DIALECT, Constantes.DATABASE_ORM_DIALECT);
		propriedadesHibernate.setProperty(Constantes.ORM_DIALECT_SHOW_SQL, Constantes.ORM_DIALECT_SHOW_SQL_ON);
		propriedadesHibernate.setProperty(Constantes.ORM_DDL_AUTO, Constantes.ORM_DDL_AUTO_UPDATE);
		
		//carrega informacoes do Hibernate
		factoryBean.setJpaProperties(propriedadesHibernate);
		
		//procurar pelas entidades no pacote de modelos
		factoryBean.setPackagesToScan(Constantes.PATH_MODEL_PACKAGES);
		
		return factoryBean;
	}

	@Bean
	public JpaTransactionManager transactionManager(EntityManagerFactory emf) {
	    return new JpaTransactionManager(emf);
	}
	
}