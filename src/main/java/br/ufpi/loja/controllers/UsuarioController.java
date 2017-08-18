package br.ufpi.loja.controllers;

import br.ufpi.loja.daos.UsuarioDAO;
import br.ufpi.loja.modelos.Usuario;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class UsuarioController {
	@Autowired
	UsuarioDAO dao;
	
	/**
	 * no primeiro GET retorna o formulário de novo Usuário
	 * @return página novo-usuario.jsp
	 */
	@RequestMapping(value="/listaUsuarios", method = RequestMethod.GET)
	public ModelAndView listaUsuarios() {
        List<Usuario> usuarios = dao.listar();
        //usuario/lista-usuarios.jsp
        ModelAndView mav = new ModelAndView("usuarios/lista-usuarios");
        mav.addObject("usuarios", usuarios);
		return mav;
	}
	
	/**
	 * Action para cadastrar um novo usuario via formulario comum
	 * @return String pagina formulario-usuario.jsp com o formulario para os dados do usuario
	 */
    @RequestMapping("/novoUsuario")
    public String form(Usuario usuario){
    		//usuario/formulario-usuario.jsp
        return ("usuarios/formulario-usuario");
    }
	
    /**
    //@RequestMapping(value="/salvaUsuario", method=RequestMethod.POST)
    public void grava(HttpServletRequest request, 
            @RequestParam(value="nome", required=true) String nome, 
            @RequestParam(value="email", required=true) String email, 
            @RequestParam(value="senha", required=true) String senha, HttpServletResponse response) {
    		Usuario usuario = new Usuario();
    		usuario.setNome(nome);
    		usuario.setEmail(email);
    		usuario.setSenha(senha);
    		dao.gravar(usuario);
    		response.setStatus(200); //usado para tratamento AJAX
    }
    **/
    
    /**
     * Salva um novo usuário
     * @param usuario Usuario
     * @param redirectAttributes encaminha mensagem para outra página
     * @return /usuarios - lista de usuários
     */
    @RequestMapping(value="/salvaUsuario", method=RequestMethod.POST)
    public ModelAndView grava(Usuario usuario, RedirectAttributes redirectAttributes){
    		dao.gravar(usuario);
    		redirectAttributes.addFlashAttribute("sucesso", "Usuário cadastrado com sucesso!");
    		return new ModelAndView("redirect:/listaUsuarios");
    }
    
    @RequestMapping("/novoUsuarioExterno")
    public String formUsuarioExterno(){
    	//TODO implementa o cadastro de um usuario externo 
    	return "usuarios/formulario-usuario-externo";
    }
   
}