package com.empresa.proyecto.action;

import java.util.List;

import com.empresa.proyecto.bean.Catalogo;
import com.empresa.proyecto.service.CatalogoServiceImpl;
import com.opensymphony.xwork2.ActionSupport;

public class CatalogoAction extends ActionSupport {
	private Catalogo catalogo;
	private List<Catalogo> marcas;
	private int cod_subCatalogo;
	private String descrip_catalogo;
	
	public String registrarMarca(){
		CatalogoServiceImpl service = new CatalogoServiceImpl();
		int ok = service.insertarMarca(catalogo);
		if(ok==0){
			addActionError("Error al registrar");
			return "error";
		} else{
			addActionMessage("Registro exitoso!");
			return "registro";
		}
	}
	
	public String listarMarcas(){
		System.out.println("entro");
		System.out.println("entro");
		System.out.println("entro");
		System.out.println("entro");
		System.out.println("entro");
		System.out.println("entro");
		CatalogoServiceImpl service = new CatalogoServiceImpl();
		marcas = service.lstMarca();
		if(marcas == null){
			addActionError("Error al listar.");
			return "error";
		} else {
			return "listaMarcas";
		}
		
	}
	
	public String eliminarMarca(){
		CatalogoServiceImpl service = new CatalogoServiceImpl();
		System.out.println("---Eliminar Marca---");
		
		int ok = service.eliminarMarca(cod_subCatalogo);
		
		if(ok==0){
			addActionError("Error al eliminar.");
			return "error";
		} else{
			addActionMessage("Marca eliminada.");
			return "eliminadoMarca";
		}
		
	}

	public Catalogo getCatalogo() {
		return catalogo;
	}

	public void setCatalogo(Catalogo catalogo) {
		this.catalogo = catalogo;
	}

	public List<Catalogo> getMarcas() {
		return marcas;
	}

	public void setMarcas(List<Catalogo> marcas) {
		this.marcas = marcas;
	}

	public int getCod_subCatalogo() {
		return cod_subCatalogo;
	}

	public void setCod_subCatalogo(int cod_subCatalogo) {
		this.cod_subCatalogo = cod_subCatalogo;
	}

	public String getDescrip_catalogo() {
		return descrip_catalogo;
	}

	public void setDescrip_catalogo(String descrip_catalogo) {
		this.descrip_catalogo = descrip_catalogo;
	}
	
	
	
	
	
}
