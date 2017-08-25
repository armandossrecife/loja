package br.ufpi.loja.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.ufpi.loja.daos.UsuarioDAO;
import br.ufpi.loja.modelos.Usuario;

@Controller
public class LoginController{
	@Autowired
	UsuarioDAO dao;
	
	/**
	 * no primeiro GET retorna o formulário de login da aplicação
	 * @return página formulario-login.jsp
	 */
	@RequestMapping("/loginForm")
	public String loginForm() {
		return "usuarios/formulario-login";
	}

	/**
	 * Recebe os dados enviados do formulário de login e testa se é um usuário registrado e válido
	 * @param usuario Usuario passado no formulário de login
	 * @param session Sessao - cria uma sessão do usuário
	 * @return página menu.jsp se o usuário é válido, página formulario-login.jsp caso não seja um usuário válido
	 */
	@RequestMapping("/efetuaLogin")
	public String efetuaLogin(Usuario usuario, HttpSession session, Model model) {
		Usuario checaUsuario = dao.pesquisaUsuario(usuario); 
		if ((checaUsuario != null) && (checaUsuario.getStatus() >= 1)){
			session.setAttribute("usuarioLogado", usuario);
			return "home";
		}
		model.addAttribute("mensagem", "Erro usuário ou senha.");
		model.addAttribute("tipoMensagem", "erro");
		// ele errou a senha, voltou para o formulario
		return "usuarios/formulario-login";
	}
}