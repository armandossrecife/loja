package br.ufpi.loja.infra;

import java.io.File;
import java.io.IOException;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import br.ufpi.loja.utilidades.Constantes;

@Component
public class FileSaver {
	@Autowired
    private HttpServletRequest request;

	/**
	 * Salva um arquivo em uma pasta e retorna o path relativo do arquivo
	 * @param baseFolder pasta base onde o arquivo sera salvo
	 * @param file arquivo feito pelo upload
	 * @return path relativo do arquivo
	 */
	public String write(String baseFolder, MultipartFile file) {
	    try {
	    	/** caminho da aplicacao
	        String realPath = request.getServletContext().getRealPath("/"+baseFolder);
	        String path = realPath + "/" + file.getOriginalFilename();
	        */
	    	//TO DO fazer ajuste para salvar a imagem em um diretorio do contexto da aplicacao
	    	//caminho do usuario
	        String uploadPath = System.getProperty(Constantes.USER_DIRECTORY);
	        //String filePath = uploadPath + System.getProperty(Constantes.FILE_SEPARATOR) + file.getOriginalFilename();
	        String filePath = uploadPath + System.getProperty(Constantes.FILE_SEPARATOR) + geraNome(file.getName());
	        file.transferTo(new File(filePath));
	        return filePath;
	    } catch (Exception e) {
	        throw new RuntimeException(e);
	    }
	}
	
	/**
	 * Gera um nome randomico
	 * @param arquivo campo de entrada do arquivo
	 * @return nome randomico
	 */
	private String geraNome(String arquivo){
		Random aleatorio = new Random();
		int randomico = aleatorio.nextInt(1000000);
		
		String nome="";
		nome = arquivo+"-"+randomico+".jpg"; 
		
		return nome;
	}
}
