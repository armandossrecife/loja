package br.ufpi.loja.validation;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import br.ufpi.loja.modelos.Usuario;

public class UsuarioValidation implements Validator{

	@Override
	public boolean supports(Class<?> clazz) {
		return Usuario.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object arg0, Errors arg1) {
		// TODO Auto-generated method stub
		
	}

}
