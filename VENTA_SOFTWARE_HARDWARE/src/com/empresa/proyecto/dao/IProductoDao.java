package com.empresa.proyecto.dao;

import java.util.List;

import com.empresa.proyecto.bean.Categoria;
import com.empresa.proyecto.bean.DetCaracteristica;
import com.empresa.proyecto.bean.Marca;
import com.empresa.proyecto.bean.Producto;

public interface IProductoDao {

	public List<Producto> listarProducto();
	
	public int registrarProducto(Producto producto);
	
	public Producto obtenerProducto(int codigo);
	
	
	public int actualizarProducto (Producto producto);
	
	
	
	public List<Marca> listarMarca();
	public List<Categoria> listarCategoria();

	public List<DetCaracteristica> listarDetCarate();

	
	
	//public List<Producto> consultaLibroxCodTema(int codTema);
}
