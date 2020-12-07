package com.empresa.proyecto.action;

import java.util.List;

import com.empresa.proyecto.bean.Usuario;
import com.empresa.proyecto.service.UsuarioServiceImpl;
import com.opensymphony.xwork2.ActionSupport;

public class UsuarioAction  extends ActionSupport{
	
	private Usuario usuario;
	private List<Usuario> lstUsuario;
	private String dni;
	private int codigo_usu;
	
	public Usuario getUsuario() {
		return usuario;
	}
	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}
	public List<Usuario> getLstUsuario() {
		return lstUsuario;
	}
	public void setLstUsuario(List<Usuario> lstUsuario) {
		this.lstUsuario = lstUsuario;
	}

	public String getDni() {
		return dni;
	}
	public void setDni(String dni) {
		this.dni = dni;
	}
	public int getCodigo_usu() {
		return codigo_usu;
	}
	public void setCodigo_usu(int codigo_usu) {
		this.codigo_usu = codigo_usu;
	}
	
	
	
	
	
	public String lista()
	{
		UsuarioServiceImpl servicio = new UsuarioServiceImpl();
		lstUsuario = servicio.listaUsuario();
	
		System.out.println("-----LISTAR------");
		if(lstUsuario ==null){
			addActionError("Listado vacio");
			return "error";
		}else{
			return "ok";
		}

	}
	
	
	
	
	
	
	//METODO FILTRO DE PRODUCTOS POR NOMBRE CATEGORIA
	public String consultaUsuarioxDNI(){
		UsuarioServiceImpl servicio = new UsuarioServiceImpl();
		lstUsuario = servicio.consultaUsuarioxDNI(dni);
		System.out.println("-----Consulta Productos x Categoria");
		if(lstUsuario==null){
			addActionError("No se encontró resultados!!");
			return "error";
		}else{
			return "ok";
		}
	}
	
	
	
	
	public String buscar(){
		UsuarioServiceImpl servicio = new UsuarioServiceImpl();
		System.out.println("----Buscar-----");
		usuario = servicio.obtenerUsuario(codigo_usu);
		if(usuario==null){
			addActionError("Error al cargar!!");
			return "error";
		}else{
			addActionMessage("Producto encontrado");
			return "ok";
		}
	}
	
	
	public String actualizar(){
		UsuarioServiceImpl servicio = new UsuarioServiceImpl();
		System.out.println("----actualizar------");
		int ok = servicio.actualizarUsuario(usuario);
		if(ok==0){
			addActionError("Error al actualizar");
			return "error";
		}else{
			addActionMessage("Producto actualizado con éxito");
			return "ok";
		}
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
