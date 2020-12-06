package com.empresa.proyecto.action;

import java.util.List;

import com.empresa.proyecto.bean.Catalogo;
import com.empresa.proyecto.service.CatalogoServiceImpl;
import com.opensymphony.xwork2.ActionSupport;

public class CatalogoAction extends ActionSupport {
	private Catalogo catalogo;
	private List<Catalogo> marcas;
	private String idMarca;
	private String descrip_catalogo;
	
	public String registrarMarca(){
		CatalogoServiceImpl service = new CatalogoServiceImpl();
		catalogo = new Catalogo();
		
		if(idMarca!=null) {
			catalogo.setCod_catalogo(idMarca.substring(0, 2));
			catalogo.setCod_subcatalogo(idMarca.substring(2, 4));
			catalogo.setCod_tabla(idMarca.substring(4, 6));
			
			catalogo.setDescrip_catalogo(descrip_catalogo);
			
			int ok = service.actualizarMarca(catalogo);
			
			if(ok==0){
				addActionError("Error al registrar");
				return "error";
			} else{
				addActionMessage("Registro exitoso!");
				return "ok";
			}
		}
		else {
			catalogo.setDescrip_catalogo(descrip_catalogo);
			
			int ok = service.insertarMarca(catalogo);
			
			if(ok==0){
				addActionError("Error al registrar");
				return "error";
			} else{
				addActionMessage("Registro exitoso!");
				return "ok";
			}
		}
		
		
	}
	
	public String listarMarcas(){
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
		
//		int ok = service.eliminarMarca(cod_subCatalogo);
		int ok = 0;
		
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

	public String getIdMarca() {
		return idMarca;
	}

	public void setIdMarca(String idMarca) {
		this.idMarca = idMarca;
	}

	public String getDescrip_catalogo() {
		return descrip_catalogo;
	}

	public void setDescrip_catalogo(String descrip_catalogo) {
		this.descrip_catalogo = descrip_catalogo;
	}

	
	
	
	
	
}
