package com.empresa.proyecto.action;

import java.util.List;

import com.empresa.proyecto.bean.Catalogo;
import com.empresa.proyecto.bean.Producto;
import com.empresa.proyecto.service.CatalogoServiceImpl;
import com.empresa.proyecto.service.ProductoServiceImpl;
import com.opensymphony.xwork2.ActionSupport;

public class ProductoAction extends ActionSupport {
	private Producto producto;
	private List<Catalogo> marcas;
	private List<Catalogo> categorias;
	private Catalogo catalogo;
	private List<Producto> lstProducto;
	private int cod_prod=0, id_caract, stk_prod, stk_min_prod;
	private double precio_prod;
	private String id_marca, id_cat, descrip_prod;
	
	public String registrarProducto(){
		ProductoServiceImpl service = new ProductoServiceImpl();
		producto = new Producto();
		
		if(cod_prod==0) {
			producto.setId_marca(id_marca);
			producto.setId_cat(id_cat);
			producto.setDescrip_prod(descrip_prod);
			producto.setId_caract(id_caract);
			producto.setPrecio_prod(precio_prod);
			producto.setStk_prod(stk_prod);
			producto.setStk_min_prod(stk_min_prod);
			
			int ok = service.insertarProducto(producto);
			
			if(ok==0){
				addActionError("Error al registrar");
				return "error";
			} else{
				addActionMessage("Registro exitoso!");
				return "ok";
			}
		}
		else {
			producto.setCod_prod(cod_prod);
			producto.setId_marca(id_marca);
			producto.setId_cat(id_cat);
			producto.setDescrip_prod(descrip_prod);
			producto.setId_caract(id_caract);
			producto.setPrecio_prod(precio_prod);
			producto.setStk_prod(stk_prod);
			producto.setStk_min_prod(stk_min_prod);
			
			int ok = service.actualizarProducto(producto);
			
			if(ok==0){
				addActionError("Error al registrar");
				return "error";
			} else{
				addActionMessage("Actualizacion exitosa!");
				return "ok";
			}
			
		}
		
	}
	
	public String listarProductos(){
		ProductoServiceImpl service = new ProductoServiceImpl();
		lstProducto = service.lstProducto();
		if(lstProducto == null){
			addActionError("Error al listar.");
			return "error";
		} else {
			return "listaProducto";
		}
		
	}
	
	public String eliminarProducto(){
		ProductoServiceImpl service = new ProductoServiceImpl();
		producto = new Producto();
		
		if(cod_prod==0) {
			addActionError("Ningun elemento seleccionado");
			return "error";
		}
		else {
			producto.setCod_prod(cod_prod);
			
			int ok = service.eliminarProducto(producto);
			
			if(ok==0){
				addActionError("Error al eliminar");
				return "error";
			} else{
				addActionMessage("Eliminacion exitoso!");
				return "ok";
			}
			
		}
		
	}
	
	public String listarMarcas(){
		marcas = new CatalogoServiceImpl().lstMarca();
		return SUCCESS;
	}
	
	public String listarCategorias(){
		marcas = new CatalogoServiceImpl().lstMarca();
		return SUCCESS;
	}
	
	public Producto getProducto() {
		return producto;
	}

	public void setProducto(Producto producto) {
		this.producto = producto;
	}

	public List<Catalogo> getMarcas() {
		return marcas;
	}

	public void setMarcas(List<Catalogo> marcas) {
		this.marcas = marcas;
	}

	public int getCod_prod() {
		return cod_prod;
	}

	public void setCod_prod(int cod_prod) {
		this.cod_prod = cod_prod;
	}

	public String getId_cat() {
		return id_cat;
	}

	public void setId_cat(String id_cat) {
		this.id_cat = id_cat;
	}

	public int getId_caract() {
		return id_caract;
	}

	public void setId_caract(int id_caract) {
		this.id_caract = id_caract;
	}

	public int getStk_prod() {
		return stk_prod;
	}

	public void setStk_prod(int stk_prod) {
		this.stk_prod = stk_prod;
	}

	public int getStk_min_prod() {
		return stk_min_prod;
	}

	public void setStk_min_prod(int stk_min_prod) {
		this.stk_min_prod = stk_min_prod;
	}

	public double getPrecio_prod() {
		return precio_prod;
	}

	public void setPrecio_prod(double precio_prod) {
		this.precio_prod = precio_prod;
	}

	public List<Producto> getLstProducto() {
		return lstProducto;
	}

	public void setLstProducto(List<Producto> lstProducto) {
		this.lstProducto = lstProducto;
	}

	public List<Catalogo> getCategorias() {
		return categorias;
	}

	public void setCategorias(List<Catalogo> categorias) {
		this.categorias = categorias;
	}

	public Catalogo getCatalogo() {
		return catalogo;
	}

	public void setCatalogo(Catalogo catalogo) {
		this.catalogo = catalogo;
	}

	
}
