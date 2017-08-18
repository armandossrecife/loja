package br.ufpi.loja.configuracoes;

import br.ufpi.loja.controllers.HomeController;
import br.ufpi.loja.controllers.LoginController;
import br.ufpi.loja.controllers.LogoutController;
import br.ufpi.loja.controllers.UsuarioController;
import br.ufpi.loja.daos.ProdutoDAO;
import br.ufpi.loja.daos.UsuarioDAO;
import br.ufpi.loja.infra.FileSaver;
import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.format.datetime.DateFormatter;
import org.springframework.format.datetime.DateFormatterRegistrar;
import org.springframework.format.support.DefaultFormattingConversionService;
import org.springframework.format.support.FormattingConversionService;
import org.springframework.web.multipart.MultipartResolver;
import org.springframework.web.multipart.support.StandardServletMultipartResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

/**
 * Faz a configuracao Web da Aplicacao para resolucao das paginas web da visao
 * @author armandosoaressousa
 *
 */
@EnableWebMvc
@ComponentScan(basePackageClasses={HomeController.class, ProdutoDAO.class, FileSaver.class, LoginController.class, LogoutController.class, UsuarioDAO.class, UsuarioController.class})
public class AppWebConfiguration {
	/**
	 * Informa ao Servlet Dispatcher que o diretorio WEB-INF/views contem as paginas da aplicacao
	 * @return devolve o resolver para o Servlet Dispatcher
	 */
	@Bean
	public InternalResourceViewResolver internalResourceViewResolver(){
		InternalResourceViewResolver resolver = new InternalResourceViewResolver();
		resolver.setPrefix("WEB-INF/views/");
		resolver.setSuffix(".jsp");
		return resolver;
	}
	
	/**
	 * Configura o arquivo de mensagem messages.properties
	 * @return
	 */
	@Bean
    public MessageSource messageSource() {
        ReloadableResourceBundleMessageSource messageSource = new ReloadableResourceBundleMessageSource();
        messageSource.setBasename("/WEB-INF/messages");
        messageSource.setDefaultEncoding("UTF-8");
        messageSource.setCacheSeconds(1);
        return messageSource;
    }
	
	/**
	 * Faz a configuracao de data padrao Brasil
	 * @return conversor de data padrao Brasil
	 */
	@Bean
	public FormattingConversionService mvcConversionService(){
	    DefaultFormattingConversionService conversionService = new DefaultFormattingConversionService();
	    DateFormatterRegistrar formatterRegistrar = new DateFormatterRegistrar();
	    formatterRegistrar.setFormatter(new DateFormatter("dd/MM/yyyy"));
	    formatterRegistrar.registerFormatters(conversionService);

	    return conversionService;
	}

	/**
	 * Faz a configuracao da aplicacao para poder resolver e receber arquivos multipart via upload
	 * @return padrao multipart de arquivos
	 */
	@Bean
	public MultipartResolver multipartResolver() {
		return new StandardServletMultipartResolver();
	}
}
