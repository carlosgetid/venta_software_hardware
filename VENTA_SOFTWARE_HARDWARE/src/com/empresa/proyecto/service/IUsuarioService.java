package com.empresa.proyecto.service;

import java.util.List;

import com.empresa.proyecto.bean.Usuario;

public interface IUsuarioService {

	public List<Usuario> listaUsuario();
	public List<Usuario> consultaUsuarioxDNI(String dni);
	
	
	public Usuario obtenerUsuario(int codigo_usu);
	public int actualizarUsuario(Usuario usuario);
}
