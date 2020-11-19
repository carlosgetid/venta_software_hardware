package com.empresa.proyecto.action;

import java.util.List;

import com.empresa.proyecto.bean.Caracteristica;
import com.empresa.proyecto.bean.Categoria;
import com.empresa.proyecto.bean.DetCaracteristica;
import com.empresa.proyecto.bean.Marca;
import com.empresa.proyecto.bean.Producto;
import com.empresa.proyecto.service.IProductoService;
import com.empresa.proyecto.service.ProductoServiceImpl;
import com.opensymphony.xwork2.ActionSupport;

public class ProductoAction extends ActionSupport{

	private Producto producto;
	private List<Producto> lstProducto;
	private List<Marca> lstMarca;
	private List<Categoria> lstCategoria;
	private List<DetCaracteristica> lstDetCaracteristica;

	
	//parametro para eliminar y actualizar y filtrar por tema
		private int idProducto,codigoMarca,codigoCate,codigoCaract,codigoDetCaract;

		
		
		//GET - SET
		public Producto getProducto() {
			return producto;
		}
		public void setProducto(Producto producto) {
			this.producto = producto;
		}
		public List<Producto> getLstProducto() {
			return lstProducto;
		}
		public void setLstProducto(List<Producto> lstProducto) {
			this.lstProducto = lstProducto;
		}
		public List<Marca> getLstMarca() {
			return lstMarca;
		}
		public void setLstMarca(List<Marca> lstMarca) {
			this.lstMarca = lstMarca;
		}
		public List<Categoria> getLstCategoria() {
			return lstCategoria;
		}
		public void setLstCategoria(List<Categoria> lstCategoria) {
			this.lstCategoria = lstCategoria;
		}
		
		public List<DetCaracteristica> getLstDetCaracteristica() {
			return lstDetCaracteristica;
		}
		public void setLstDetCaracteristica(List<DetCaracteristica> lstDetCaracteristica) {
			this.lstDetCaracteristica = lstDetCaracteristica;
		}
		public int getIdProducto() {
			return idProducto;
		}
		public void setIdProducto(int idProducto) {
			this.idProducto = idProducto;
		}
		public int getCodigoMarca() {
			return codigoMarca;
		}
		public void setCodigoMarca(int codigoMarca) {
			this.codigoMarca = codigoMarca;
		}
		public int getCodigoCate() {
			return codigoCate;
		}
		public void setCodigoCate(int codigoCate) {
			this.codigoCate = codigoCate;
		}
		public int getCodigoCaract() {
			return codigoCaract;
		}
		public void setCodigoCaract(int codigoCaract) {
			this.codigoCaract = codigoCaract;
		}
		public int getCodigoDetCaract() {
			return codigoDetCaract;
		}
		public void setCodigoDetCaract(int codigoDetCaract) {
			this.codigoDetCaract = codigoDetCaract;
		}

		
		
		//METODO LISTAR PRODUCTOS 
		public String listar(){
			ProductoServiceImpl servicio = new ProductoServiceImpl();
			lstProducto = servicio.listarProducto();
		
			System.out.println("-----LISTAR------");
			if(lstProducto ==null){
				addActionError("Listado vacio");
				return "error";
			}else{
				return "ok";
			}
		}
		
		

		//METODO LISTA MARCAS
		public String listarMarca(){
			lstMarca = new ProductoServiceImpl().listarMarca();
			return SUCCESS;
		}
			
		
		

		//METODO LISTA CATEGORIA
		public String listarCategoria(){
			lstCategoria = new ProductoServiceImpl().listarCategoria();
			return SUCCESS;
		}
			

		//METODO LISTA DETCARACTERISTICA
		public String listarDetCaracteristica(){
			lstDetCaracteristica = new ProductoServiceImpl().listarDetCarate();
			return SUCCESS;
		}
			
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
}
