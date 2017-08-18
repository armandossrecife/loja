package br.ufpi.loja.configuracoes;

import javax.servlet.Filter;
import javax.servlet.MultipartConfigElement;
import javax.servlet.ServletRegistration.Dynamic;

import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

/**
 * Faz a Configuracao do Servlet Dispatcher da Aplicacao
 * @author armandosoaressousa
 *
 */
public class ServletSpringMVC extends AbstractAnnotationConfigDispatcherServletInitializer{

	@Override
	protected Class<?>[] getRootConfigClasses() {
		// TODO Auto-generated method stub
		return null;
	}

	/**
	 * Define a Classe de Configuracao da aplicacao
	 */
	@Override
	protected Class<?>[] getServletConfigClasses() {
		return new Class[] {AppWebConfiguration.class, JPAConfiguration.class, WebConfig.class};
	}

	/**
	 * Define o path principal da aplicacao
	 */
	@Override
	protected String[] getServletMappings() {
		return new String[] {"/"};
	}
	
	@Override
    protected Filter[] getServletFilters() {
        CharacterEncodingFilter encodingFilter = new CharacterEncodingFilter();
        encodingFilter.setEncoding("UTF-8");

        return new Filter[] {encodingFilter};
	}

	/** 
	 * Vamos sobrescrever um método chamado customizeRegistration que recebe um objeto do tipo Dynamic que chamaremos de registration. 
	 * Neste objeto, usaremos o método setMultipartConfig que requer um objeto do tipo MultipartConfigElement. 
	 * O MultipartConfigElement espera receber uma String que configure o arquivo. 
	 * Não usaremos nenhuma configuração para o arquivo, queremos receber este do jeito que vier. Passamos então uma String vazia.
	 */
	@Override
	protected void customizeRegistration(Dynamic registration) {
		registration.setMultipartConfig(new MultipartConfigElement(""));
	}

}
