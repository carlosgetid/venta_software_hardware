package com.empresa.proyecto.bean;

public class Producto {

	private int cod_prod;
	
	private int cod_marca;
	private String descrp_marca;
	
	private int cod_cat;
	private String nom_cat;
	private String descrp_cat;
	
	private String descrip_prod;
	
	private int cod_caract;
	private int cod_det_caract;
	private String det_sope;
	private String mem_ram;
	
	
	
	private Double precio;
	private int stock;
	private int stock_min;
	private String estado;
	
	
	
	
	
	public String getMem_ram() {
		return mem_ram;
	}
	public void setMem_ram(String mem_ram) {
		this.mem_ram = mem_ram;
	}
	public String getNom_cat() {
		return nom_cat;
	}
	public void setNom_cat(String nom_cat) {
		this.nom_cat = nom_cat;
	}
	public int getCod_prod() {
		return cod_prod;
	}
	public void setCod_prod(int cod_prod) {
		this.cod_prod = cod_prod;
	}
	public int getCod_marca() {
		return cod_marca;
	}
	public void setCod_marca(int cod_marca) {
		this.cod_marca = cod_marca;
	}
	public String getDescrp_marca() {
		return descrp_marca;
	}
	public void setDescrp_marca(String descrp_marca) {
		this.descrp_marca = descrp_marca;
	}
	public int getCod_cat() {
		return cod_cat;
	}
	public void setCod_cat(int cod_cat) {
		this.cod_cat = cod_cat;
	}
	public String getDescrp_cat() {
		return descrp_cat;
	}
	public void setDescrp_cat(String descrp_cat) {
		this.descrp_cat = descrp_cat;
	}
	public String getDescrip_prod() {
		return descrip_prod;
	}
	public void setDescrip_prod(String descrip_prod) {
		this.descrip_prod = descrip_prod;
	}
	public int getCod_caract() {
		return cod_caract;
	}
	public void setCod_caract(int cod_caract) {
		this.cod_caract = cod_caract;
	}
	public int getCod_det_caract() {
		return cod_det_caract;
	}
	public void setCod_det_caract(int cod_det_caract) {
		this.cod_det_caract = cod_det_caract;
	}
	public String getDet_sope() {
		return det_sope;
	}
	public void setDet_sope(String det_sope) {
		this.det_sope = det_sope;
	}
	public Double getPrecio() {
		return precio;
	}
	public void setPrecio(Double precio) {
		this.precio = precio;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public int getStock_min() {
		return stock_min;
	}
	public void setStock_min(int stock_min) {
		this.stock_min = stock_min;
	}
	public String getEstado() {
		return estado;
	}
	public void setEstado(String estado) {
		this.estado = estado;
	}
	
	
	
}
