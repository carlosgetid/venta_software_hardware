package com.empresa.proyecto.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.empresa.proyecto.bean.Caracteristica;
import com.empresa.proyecto.bean.Categoria;
import com.empresa.proyecto.bean.DetCaracteristica;
import com.empresa.proyecto.bean.Marca;
import com.empresa.proyecto.bean.Producto;
import com.empresa.proyecto.dao.IProductoDao;
import com.empresa.proyecto.util.MybatisUtil;

public class ProductoServiceImpl implements IProductoService {

	@Override
	public int guardarProducto(Producto producto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Producto obtenerProducto(int codigo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Marca> listarMarca() {
		SqlSession session = MybatisUtil.getSqlSessionFactory().openSession();
		List<Marca> lista = null;
		
		try {
				IProductoDao pm = session.getMapper(IProductoDao.class);
				lista = pm.listarMarca();
			} catch (Exception e) {
				// TODO: handle exception
				System.out.println(""+e.toString());
		    }
		
		return lista;
	}

	@Override
	public List<Categoria> listarCategoria() {
		SqlSession session = MybatisUtil.getSqlSessionFactory().openSession();
		List<Categoria> lista = null;
		
		try {
				IProductoDao pm = session.getMapper(IProductoDao.class);
				lista = pm.listarCategoria();
			} catch (Exception e) {
				// TODO: handle exception
				System.out.println(""+e.toString());
		    }
		
		return lista;
	}

	
	@Override
	public List<DetCaracteristica> listarDetCarate() {
		SqlSession session = MybatisUtil.getSqlSessionFactory().openSession();
		List<DetCaracteristica> lista = null;
		
		try {
				IProductoDao pm = session.getMapper(IProductoDao.class);
				lista = pm.listarDetCarate();
			} catch (Exception e) {
				// TODO: handle exception
				System.out.println(""+e.toString());
		    }
		
		return lista;
	}

	@Override
	public List<Producto> listarProducto() {
		SqlSession session = MybatisUtil.getSqlSessionFactory().openSession();
		List<Producto> lista = null;
		
		try {
				IProductoDao pm = session.getMapper(IProductoDao.class);
				lista = pm.listarProducto();
			} catch (Exception e) {
				// TODO: handle exception
				System.out.println(""+e.toString());
		    }
		
		return lista;
	}

}
