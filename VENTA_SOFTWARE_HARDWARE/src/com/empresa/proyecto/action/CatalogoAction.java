package com.empresa.proyecto.action;

import java.util.List;

import com.empresa.proyecto.bean.Catalogo;
import com.empresa.proyecto.service.CatalogoServiceImpl;
import com.opensymphony.xwork2.ActionSupport;

public class CatalogoAction extends ActionSupport {
	private Catalogo catalogo;
	private List<Catalogo> marcas;
	private List<Catalogo> categorias;
	private String idMarca, idCategoria;
	private String descrip_catalogo;
	
	public String registrarMarca(){
		CatalogoServiceImpl service = new CatalogoServiceImpl();
		catalogo = new Catalogo();
		
		if(idMarca.equals("")) {
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
		else {
			catalogo.setCod_catalogo(idMarca.substring(0, 2));
			catalogo.setCod_subcatalogo(idMarca.substring(2, 4));
			catalogo.setCod_tabla(idMarca.substring(4, 6));
			
			catalogo.setDescrip_catalogo(descrip_catalogo);
			
			int ok = service.actualizarMarca(catalogo);
			
			if(ok==0){
				addActionError("Error al registrar");
				return "error";
			} else{
				addActionMessage("Actualizacion exitosa!");
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
		catalogo = new Catalogo();
		
		if(idMarca.equals("")) {
			addActionError("Ningun elemento seleccionado");
			return "error";
		}
		else {
			catalogo.setCod_catalogo(idMarca.substring(0, 2));
			catalogo.setCod_subcatalogo(idMarca.substring(2, 4));
			catalogo.setCod_tabla(idMarca.substring(4, 6));
			
			int ok = service.eliminarMarca(catalogo);
			
			if(ok==0){
				addActionError("Error al eliminar");
				return "error";
			} else{
				addActionMessage("Eliminacion exitoso!");
				return "ok";
			}
			
		}
		
	}
	
	public String registrarCategoria(){
		CatalogoServiceImpl service = new CatalogoServiceImpl();
		catalogo = new Catalogo();
		
		if(idCategoria.equals("")) {
			catalogo.setDescrip_catalogo(descrip_catalogo);
			
			int ok = service.insertarCatgoria(catalogo);
			
			if(ok==0){
				addActionError("Error al registrar");
				return "error";
			} else{
				addActionMessage("Registro exitoso!");
				return "ok";
			}
		}
		else {
			catalogo.setCod_catalogo(idCategoria.substring(0, 2));
			catalogo.setCod_subcatalogo(idCategoria.substring(2, 4));
			catalogo.setCod_tabla(idCategoria.substring(4, 6));
			
			catalogo.setDescrip_catalogo(descrip_catalogo);
			
			int ok = service.actualizarCategoria(catalogo);
			
			if(ok==0){
				addActionError("Error al registrar");
				return "error";
			} else{
				addActionMessage("Actualizacion exitosa!");
				return "ok";
			}
			
		}
		
		
	}
	
	public String listarCategoria(){
		CatalogoServiceImpl service = new CatalogoServiceImpl();
		categorias = service.lstMarca();
		if(categorias == null){
			addActionError("Error al listar.");
			return "error";
		} else {
			return "listaCategorias";
		}
		
	}
	
	public String eliminarCategoria(){
		CatalogoServiceImpl service = new CatalogoServiceImpl();
		catalogo = new Catalogo();
		
		if(idCategoria.equals("")) {
			addActionError("Ningun elemento seleccionado");
			return "error";
		}
		else {
			catalogo.setCod_catalogo(idCategoria.substring(0, 2));
			catalogo.setCod_subcatalogo(idCategoria.substring(2, 4));
			catalogo.setCod_tabla(idCategoria.substring(4, 6));
			
			int ok = service.eliminarCategoria(catalogo);
			
			if(ok==0){
				addActionError("Error al eliminar");
				return "error";
			} else{
				addActionMessage("Eliminacion exitoso!");
				return "ok";
			}
			
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

	public List<Catalogo> getTeclados() {
		return categorias;
	}

	public void setTeclados(List<Catalogo> categorias) {
		this.categorias = categorias;
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
