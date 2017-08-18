package br.ufpi.loja.configuracoes;

import br.ufpi.loja.interceptor.AutorizadorInterceptor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

@EnableWebMvc
@Configuration
public class WebConfig extends WebMvcConfigurerAdapter {

	/**
	 * Adicionada a configuração para registrar o interceptor na aplição.
	 * @return
	 */
    @Bean
    AutorizadorInterceptor localInterceptor() {
         return new AutorizadorInterceptor();
    }

    @Override
	public void addInterceptors(InterceptorRegistry registry) {
	    registry.addInterceptor(new AutorizadorInterceptor());
    }
    
    /**
     * Adicionada configuração para pasta de recursos do projeto.
     */
    @Override
    public void addResourceHandlers(final ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");
    }
}
