package com.empresa.proyecto.dao;

import java.util.List;

import com.empresa.proyecto.bean.Usuario;

<<<<<<< HEAD
public interface IUsuarioDao {
	public List<Usuario> listaUsuario();
=======

public interface IUsuarioDao {

	
	public List<Usuario> listaUsuario();
	
	public Usuario obtenerUsuario(int codigo_usu);
	public int actualizarUsuario(Usuario usuario);
	
	
	
	public List<Usuario> consultaUsuarioxDNI(String dni);
>>>>>>> e4159129b0a27befbd53a6042d5427a18ce0a47b
}
