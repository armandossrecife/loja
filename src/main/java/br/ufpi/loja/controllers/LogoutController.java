package br.ufpi.loja.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LogoutController {
	@RequestMapping("logout")
	public String logout(HttpSession session) {
	String nomeUsuario;
		nomeUsuario = session.getAttribute("usuarioLogado").toString();
	  session.invalidate();
	  System.out.println("Usario" + nomeUsuario + " deslogado");
	  return "redirect:loginForm";
	}
}
