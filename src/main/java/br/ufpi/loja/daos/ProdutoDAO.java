package br.ufpi.loja.daos;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import br.ufpi.loja.modelos.Produto;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class ProdutoDAO {
	
	@PersistenceContext
	private EntityManager manager;
	
	/**
	 * Dado um produto salva o produto
	 * @param produto Produto
	 */
	public void gravar(Produto produto){
		manager.persist(produto);
	}

	/**
	 * Lista todos os produtos cadastrados
	 * @return uma lista de produtos
	 */
	public List<Produto> listar(){
	    return manager.createQuery("select p from Produto p").getResultList();
	}
	
	public void alterar(Produto produto){
		
	}
	
	public boolean excluir(Produto produto){
		return false;
	}
}
