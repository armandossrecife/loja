package br.ufpi.loja.daos;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import br.ufpi.loja.modelos.Usuario;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class UsuarioDAO {

	@PersistenceContext
	private EntityManager manager;
	
	/**
	 * Dado um usuario salva o usuario
	 * @param usuario Usuario
	 */
	public void gravar(Usuario usuario){
		manager.persist(usuario);
	}

	/**
	 * Lista todos os usuarios cadastrados
	 * @return uma lista de usuarios
	 */
	public List<Usuario> listar(){
	    return manager.createQuery("select u from Usuario u").getResultList();
	}
	
	public boolean existeUsuario(Usuario usuario){
		String jpql = "select u from Usuario u where u.login=:login and u.senha=:senha";
		
		if(usuario == null) {
			throw new IllegalArgumentException("Usuário nao deve ser nulo");
		}
		try{
			Query query = manager.createQuery(jpql);
			query.setParameter("login", usuario.getLogin());
			query.setParameter("senha", usuario.getSenha());
			if ( (Usuario) query.getSingleResult() != null){
				return true;
			}else {
				return false;
			}
		}catch(Exception ex){
			System.out.println("Erro: " + ex.getMessage());
			return false;
		}
	}
	
	/**
	 * Altera os da
	 * @param usuario
	 */
	public void alterar(Usuario usuario){
		
	}
	
	/**
	 * Exclui um usuario
	 * @param id Id do Usuario
	 * @return boolean true se tiver excluído com sucesso.
	 */
	public boolean excluir(int id){
		//TODO implementar o metodo de exclusao do usuario
		return false;
	}
}
