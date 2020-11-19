package com.empresa.proyecto.service;

import java.util.List;

import com.empresa.proyecto.bean.Caracteristica;
import com.empresa.proyecto.bean.Categoria;
import com.empresa.proyecto.bean.DetCaracteristica;
import com.empresa.proyecto.bean.Marca;
import com.empresa.proyecto.bean.Producto;

public interface IProductoService {

	public List<Producto> listarProducto();
	public int guardarProducto(Producto producto);
	
	public Producto obtenerProducto(int codigo);
	
	

	
	
	
	public List<Marca> listarMarca();
	public List<Categoria> listarCategoria();
	public List<DetCaracteristica> listarDetCarate();
}
