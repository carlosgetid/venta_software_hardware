package com.empresa.proyecto.dao;

import java.util.List;

import com.empresa.proyecto.bean.Catalogo;

public interface ICatalogoDao {
	public List<Catalogo> lstMarca();
	public int insertarMarca(Catalogo x);
	public int actualizarMarca(Catalogo x);
	public int eliminarMarca(int cod_subCatalogo);
}
