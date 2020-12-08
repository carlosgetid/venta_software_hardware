package com.empresa.proyecto.dao;

import java.util.List;

import com.empresa.proyecto.bean.Usuario;


public interface IUsuarioDao {

	
	public List<Usuario> listaUsuario();
	
	public Usuario obtenerUsuario(int codigo_usu);
	public int actualizarUsuario(Usuario usuario);
	
	
	
	public List<Usuario> consultaUsuarioxDNI(String dni);
}
