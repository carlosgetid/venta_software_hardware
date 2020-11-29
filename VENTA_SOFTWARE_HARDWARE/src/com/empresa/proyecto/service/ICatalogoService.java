package com.empresa.proyecto.service;

import java.util.List;

import com.empresa.proyecto.bean.Catalogo;

public interface ICatalogoService {
	public List<Catalogo> lstMarca(String codigo);
	public int insertarMarca(Catalogo x);
	public int eliminarMarca(int cod_subCatalogo);
}
