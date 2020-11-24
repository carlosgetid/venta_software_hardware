package com.empresa.proyecto.service;

import java.util.List;

import com.empresa.proyecto.bean.Trabajador;

public interface ITrabajadorService {

	public Trabajador obtenerTrabajador(String username);
	public List<Trabajador> listaTrabajador();
	//SE REALIZA LOS METODOS DEL CRUD AGRUPADOS EN EL METODO (GUARGAR = DEPENDIENDO DEL CODIGO)
}
