package br.ufpi.loja.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.ufpi.loja.daos.ProdutoDAO;
import br.ufpi.loja.infra.FileSaver;
import br.ufpi.loja.modelos.Produto;
import br.ufpi.loja.modelos.TipoPreco;
import br.ufpi.loja.validation.ProdutoValidation;

@Controller
public class ProdutosController {
	
	@Autowired
	private ProdutoDAO produtoDao;
	
	@Autowired
    private FileSaver fileSaver;
	
	/**
	 * Inicializa a ligacao dos objetos que serao validados
	 * @param binder ProdutoValidation
	 */
	@InitBinder
	public void InitBinder(WebDataBinder binder) {
	        binder.addValidators(new ProdutoValidation());
	}
	
	/**
	 * Action para cadastrar um novo produto
	 * @param produto Novo produto
	 * @return pagina form.jsp com o formulario para os dados do produto
	 */
    @RequestMapping("/novoProduto")
    public ModelAndView form(Produto produto){
    	//produtos/formulario-produto.jsp
        ModelAndView modelAndView = new ModelAndView("produtos/formulario-produto");
        modelAndView.addObject("tipos", TipoPreco.values());
        return modelAndView;
    }
    
    /**
     * Dado um produto salva o produto
     * @param sumario arquivo de resumo do produto
     * @param produto Produto
     * @param result action /produtos - lista todos os produtos cadastrados
     * @param redirectAttributes atributo do tipo Flash para reencaminha dados para a action redirecionada
     * @return ModelAndView redireciona para a lista de produtos
     */
    @RequestMapping("/salvaProduto")
    public ModelAndView grava(MultipartFile sumario, @Valid Produto produto, BindingResult result, RedirectAttributes redirectAttributes) {
        if (result.hasErrors()) {
        	//para redirect redireciona para action /novoProduto
        		return form(produto);
        }
        String path = fileSaver.write("arquivos-sumario", sumario);
        produto.setSumarioPath(path);
        produtoDao.gravar(produto);
        redirectAttributes.addFlashAttribute("sucesso", "Produto cadastrado com sucesso!");
        //para redirect redireciona para action /listaProdutos (listar produtos)
        return new ModelAndView("redirect:/listaProdutos");
    }
    
    /**
     * Lista os produtos cadastrados
     * @return List<Produto> Lista de produtos
     */
    @RequestMapping(value="/listaProdutos", method = RequestMethod.GET)
    public ModelAndView listar() {
        List<Produto> produtos = produtoDao.listar();
        //produtos/lista.jsp
        ModelAndView mav = new ModelAndView("produtos/lista-produtos");
        mav.addObject("produtos", produtos);
        return mav;
    }
    
    @RequestMapping("/removeProduto")
    public String removeProduto(){
    	//TODO implementar a remoção de um produto
    	return "produtos/remove-produtos"; 
    }

}