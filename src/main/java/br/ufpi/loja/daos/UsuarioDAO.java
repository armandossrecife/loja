package br.ufpi.loja.daos;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import br.ufpi.loja.modelos.Usuario;

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
		String jpql = "select u from Usuario u";
	    return manager.createQuery(jpql).getResultList();
	}
	
	/**
	 * Dado um usuário com algumas informações verifica se existe um usuário correspondente e registrado
	 * @param usuario com uma parte das informações
	 * @return true se usuário existe
	 */
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
	 * Altera os dados de um usuário
	 * @param usuario Usuario
	 * @param novoUsuario novos dados do Usuario
	 */
	public void alterar(Usuario usuario, Usuario novoUsuario){
		//TODO implementar o metodo de alteração do usuario
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
	
	/**
	 * Dado um usuário exclui o mesmo
	 * @param usuario Usuário
	 * @return true se o usuário foi removido com sucesso.
	 */
	public boolean excluir(Usuario usuario){
		//TODO implementar o metodo de exclusao do usuario
		return false;
	}
	
	/**
	 * Faz a pesquisa dos dados de um usuário
	 * @param usuario Usuário
	 * @return dados do Usuário pesquisado
	 */
	public Usuario pesquisaUsuario(Usuario usuario){
		String jpql = "select u from Usuario u where u.login=:login and u.senha=:senha";
		
		if(usuario == null) {
			throw new IllegalArgumentException("Usuário nao deve ser nulo");
		}
		try{
			Query query = manager.createQuery(jpql);
			query.setParameter("login", usuario.getLogin());
			query.setParameter("senha", usuario.getSenha());
			Usuario dadosUsuario = (Usuario) query.getSingleResult(); 
			if (dadosUsuario != null){
				return dadosUsuario;
			}else {
				return null;
			}
		}catch(Exception ex){
			System.out.println("Erro: " + ex.getMessage());
			return null;
		}
	}

}
