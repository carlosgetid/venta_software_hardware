package com.empresa.proyecto.bean;

public class Producto {

	private int cod_prod;
	
	private String id_marca;
	private String descripcion_marca;
	//descripcion viene del tb_catalogo
	
	private String id_cat;
	private String descripcion_cat;
	
	
	private String descrip_prod;
	
	
	private int id_caract;
	private String descripcion_caract;
	
	
	private Double precio_prod;
	private int stk_prod;
	private int stk_min_prod;
	private String est_prod;
	
	
	
	
	
	
	
	public int getCod_prod() {
		return cod_prod;
	}
	public void setCod_prod(int cod_prod) {
		this.cod_prod = cod_prod;
	}
	public String getId_marca() {
		return id_marca;
	}
	public void setId_marca(String id_marca) {
		this.id_marca = id_marca;
	}
	public String getDescripcion_marca() {
		return descripcion_marca;
	}
	public void setDescripcion_marca(String descripcion_marca) {
		this.descripcion_marca = descripcion_marca;
	}
	public String getId_cat() {
		return id_cat;
	}
	public void setId_cat(String id_cat) {
		this.id_cat = id_cat;
	}
	public String getDescripcion_cat() {
		return descripcion_cat;
	}
	public void setDescripcion_cat(String descripcion_cat) {
		this.descripcion_cat = descripcion_cat;
	}
	public String getDescrip_prod() {
		return descrip_prod;
	}
	public void setDescrip_prod(String descrip_prod) {
		this.descrip_prod = descrip_prod;
	}
	public int getId_caract() {
		return id_caract;
	}
	public void setId_caract(int id_caract) {
		this.id_caract = id_caract;
	}
	public String getDescripcion_caract() {
		return descripcion_caract;
	}
	public void setDescripcion_caract(String descripcion_caract) {
		this.descripcion_caract = descripcion_caract;
	}
	public Double getPrecio_prod() {
		return precio_prod;
	}
	public void setPrecio_prod(Double precio_prod) {
		this.precio_prod = precio_prod;
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
	public String getEst_prod() {
		return est_prod;
	}
	public void setEst_prod(String est_prod) {
		this.est_prod = est_prod;
	}
	
	
	
	
	
	
	
}
