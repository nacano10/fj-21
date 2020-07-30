package br.com.caelum.tarefas.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import br.com.caelum.tarefas.modelo.Usuario;

@Repository
public class JpaUsuarioDao implements UsuarioDao {

	@PersistenceContext
	EntityManager manager;

	@Override
	public boolean existeUsuario(Usuario usuario) {
		List<Usuario> listaDeUsuarios = manager
				.createQuery("select u from Usuario u where u.login = :login and u.senha = :senha", Usuario.class)
				.setParameter("login", usuario.getLogin())
				.setParameter("senha", usuario.getSenha())
				.getResultList();

		if (listaDeUsuarios.isEmpty()) {
			return false;
		} else {
			return true;
		}
	}

}
