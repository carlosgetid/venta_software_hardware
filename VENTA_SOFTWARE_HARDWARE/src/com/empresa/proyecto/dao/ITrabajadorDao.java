package com.empresa.proyecto.dao;

import java.util.List;

import com.empresa.proyecto.bean.Trabajador;

public interface ITrabajadorDao {


	public Trabajador obtenerTrabajador(String username);
	
	public List<Trabajador> listaTrabajador();
	//SE REALIZA LOS METODOS DEL CRUD POR SEPARADO 
}
