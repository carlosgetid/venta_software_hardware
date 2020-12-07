package com.empresa.proyecto.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.empresa.proyecto.bean.Catalogo;
import com.empresa.proyecto.bean.Producto;
import com.empresa.proyecto.dao.ICatalogoDao;
import com.empresa.proyecto.dao.IProductoDao;
import com.empresa.proyecto.util.MybatisUtil;

public class ProductoServiceImpl implements IProductoService{
	
		@Override
	public List<Producto> lstProducto() {
		List<Producto> producto = null;
		SqlSession session = MybatisUtil.getSqlSessionFactory().openSession();
		try{
			IProductoDao cm = session.getMapper(IProductoDao.class);
			producto = cm.lstProducto();
		} catch (Exception e){
			return null;
		}
		return producto;
	}
		
	@Override
	public int insertarProducto(Producto producto) {
		int ok = 0;
		SqlSession session = MybatisUtil.getSqlSessionFactory().openSession();

		try{

			IProductoDao cm = session.getMapper(IProductoDao.class);

			ok = cm.insertarProducto(producto);
			session.commit();
		} catch(Exception e){
			System.out.println(""+e.toString());
		} finally{
			session.close();
		}
		
		return ok;
	}
	
	@Override
	public int eliminarProducto(Producto x) {
		int ok=0;
		SqlSession session = MybatisUtil.getSqlSessionFactory().openSession();
		try{
			IProductoDao cm = session.getMapper(IProductoDao.class);
			ok = cm.eliminarProducto(x);
			session.commit();
		} catch(Exception e){
			System.out.println(""+e.toString());
		} finally {
			session.close();
		}
		return ok;
	}
	
	@Override
	public int actualizarProducto(Producto x) {
		int ok = 0;
		SqlSession session = MybatisUtil.getSqlSessionFactory().openSession();

		try{

			IProductoDao cm = session.getMapper(IProductoDao.class);

			ok = cm.actualizarProducto(x);
			session.commit();
		} catch(Exception e){
			System.out.println(""+e.toString());
		} finally{
			session.close();
		}
		
		return ok;
	}
	
}
