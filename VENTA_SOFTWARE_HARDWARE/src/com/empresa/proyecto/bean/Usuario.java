package com.empresa.proyecto.bean;

public class Usuario {

	private int cod_usu;
	private String nom_usu;
	private String ape_usu;
	private String email_usu;
	private String telf_usu;
	private String fec_nac_usu;
	private String dni_usu;
	private String estado_usu;
	
	
/*
PUEDE SER UN CONCAT ENTRE EL NOMBRE Y APELLIDO 
	
	public String getNombreCompleto() {
	return nombre.concat(" ").concat(apellido);
	} 
	
*/
	
	
	
	
	
	public int getCod_usu() {
		return cod_usu;
	}
	public void setCod_usu(int cod_usu) {
		this.cod_usu = cod_usu;
	}
	public String getNom_usu() {
		return nom_usu;
	}
	public void setNom_usu(String nom_usu) {
		this.nom_usu = nom_usu;
	}
	public String getApe_usu() {
		return ape_usu;
	}
	public void setApe_usu(String ape_usu) {
		this.ape_usu = ape_usu;
	}
	public String getEmail_usu() {
		return email_usu;
	}
	public void setEmail_usu(String email_usu) {
		this.email_usu = email_usu;
	}
	public String getTelf_usu() {
		return telf_usu;
	}
	public void setTelf_usu(String telf_usu) {
		this.telf_usu = telf_usu;
	}
	public String getFec_nac_usu() {
		return fec_nac_usu;
	}
	public void setFec_nac_usu(String fec_nac_usu) {
		this.fec_nac_usu = fec_nac_usu;
	}
	public String getDni_usu() {
		return dni_usu;
	}
	public void setDni_usu(String dni_usu) {
		this.dni_usu = dni_usu;
	}
	public String getEstado_usu() {
		return estado_usu;
	}
	public void setEstado_usu(String estado_usu) {
		this.estado_usu = estado_usu;
	}

	
	
	
	
	
	
}
