package com.empresa.proyecto.service;

import java.util.List;

import com.empresa.proyecto.bean.Catalogo;
import com.empresa.proyecto.bean.Producto;

public interface IProductoService {
	public List<Producto> lstProducto();
	public int insertarProducto(Producto x);
	public int actualizarProducto(Producto x);
	public int eliminarProducto(Producto x);
	
	/*public List<Catalogo> lstTeclado();
	public int insertarTeclado(Catalogo x);
	public int actualizarTeclado(Catalogo x);
	public int eliminarTeclado(Catalogo x);*/
}
