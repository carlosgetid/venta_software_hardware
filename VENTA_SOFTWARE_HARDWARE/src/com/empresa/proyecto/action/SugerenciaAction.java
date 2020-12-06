package com.empresa.proyecto.action;

import java.util.List;

import com.empresa.proyecto.bean.Sugerencia;
import com.empresa.proyecto.bean.Usuario;
import com.empresa.proyecto.service.SugerenciaServiceImpl;
import com.empresa.proyecto.service.UsuarioServiceImpl;
import com.opensymphony.xwork2.ActionSupport;

public class SugerenciaAction extends ActionSupport {

	private Sugerencia sugerencia;
	private List<Sugerencia> lstSugerencia;
	private int idUsuario;
	
	public Sugerencia getSugerencia() {
		return sugerencia;
	}
	public void setSugerencia(Sugerencia sugerencia) {
		this.sugerencia = sugerencia;
	}
	public List<Sugerencia> getLstSugerencia() {
		return lstSugerencia;
	}
	public void setLstSugerencia(List<Sugerencia> lstSugerencia) {
		this.lstSugerencia = lstSugerencia;
	}
	public int getIdUsuario() {
		return idUsuario;
	}
	public void setIdUsuario(int idUsuario) {
		this.idUsuario = idUsuario;
	}

	
	
	
	
	
	
	
	
	
	

	
	public String lista()
	{
		SugerenciaServiceImpl servicio = new SugerenciaServiceImpl();
		lstSugerencia = servicio.listaSugerencia();
	
		System.out.println("-----LISTAR------");
		if(lstSugerencia ==null){
			addActionError("Listado vacio");
			return "error";
		}else{
			return "ok";
		}
	}
	
	
	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}