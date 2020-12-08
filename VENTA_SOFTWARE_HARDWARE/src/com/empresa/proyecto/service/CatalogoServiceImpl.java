package com.empresa.proyecto.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.empresa.proyecto.bean.Catalogo;
import com.empresa.proyecto.dao.ICatalogoDao;
import com.empresa.proyecto.util.MybatisUtil;

public class CatalogoServiceImpl implements ICatalogoService{
	
	@Override
	public List<Catalogo> lstMarca() {
		List<Catalogo> marca = null;
		SqlSession session = MybatisUtil.getSqlSessionFactory().openSession();
		try{
			ICatalogoDao cm = session.getMapper(ICatalogoDao.class);
			marca = cm.lstMarca();
		} catch (Exception e){
			return null;
		}
		return marca;
	}

	@Override
	public int insertarMarca(Catalogo marca) {
		int ok = 0;
		SqlSession session = MybatisUtil.getSqlSessionFactory().openSession();

		try{

			ICatalogoDao cm = session.getMapper(ICatalogoDao.class);

			ok = cm.insertarMarca(marca);
			session.commit();
		} catch(Exception e){
			System.out.println(""+e.toString());
		} finally{
			session.close();
		}
		
		return ok;
	}

	@Override
	public int eliminarMarca(Catalogo x) {
		int ok=0;
		SqlSession session = MybatisUtil.getSqlSessionFactory().openSession();
		try{
			ICatalogoDao cm = session.getMapper(ICatalogoDao.class);
			ok = cm.eliminarMarca(x);
			session.commit();
		} catch(Exception e){
			System.out.println(""+e.toString());
		} finally {
			session.close();
		}
		return ok;
	}

	@Override
	public int actualizarMarca(Catalogo x) {
		int ok = 0;
		SqlSession session = MybatisUtil.getSqlSessionFactory().openSession();

		try{

			ICatalogoDao cm = session.getMapper(ICatalogoDao.class);

			ok = cm.actualizarMarca(x);
			session.commit();
		} catch(Exception e){
			System.out.println(""+e.toString());
		} finally{
			session.close();
		}
		
		return ok;
	}

	@Override
	public List<Catalogo> lstTeclado() {
		List<Catalogo> teclado = null;
		SqlSession session = MybatisUtil.getSqlSessionFactory().openSession();
		try{
			ICatalogoDao cm = session.getMapper(ICatalogoDao.class);
			teclado = cm.lstTeclado();
		} catch (Exception e){
			return null;
		}
		return teclado;
	}

	@Override
	public int insertarTeclado(Catalogo x) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int actualizarTeclado(Catalogo x) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int eliminarTeclado(Catalogo x) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Catalogo> lstCategoria() {
		List<Catalogo> categoria = null;
		SqlSession session = MybatisUtil.getSqlSessionFactory().openSession();
		try{
			ICatalogoDao cm = session.getMapper(ICatalogoDao.class);
			categoria = cm.lstCategoria();
		} catch (Exception e){
			return null;
		}
		return categoria;
	}

	@Override
	public int insertarCategoria(Catalogo x) {
		int ok = 0;
		SqlSession session = MybatisUtil.getSqlSessionFactory().openSession();

		try{

			ICatalogoDao cm = session.getMapper(ICatalogoDao.class);

			ok = cm.insertarCategoria(x);
			session.commit();
		} catch(Exception e){
			System.out.println(""+e.toString());
		} finally{
			session.close();
		}
		
		return ok;
	}

	@Override
	public int actualizarCategoria(Catalogo x) {
		int ok = 0;
		SqlSession session = MybatisUtil.getSqlSessionFactory().openSession();

		try{

			ICatalogoDao cm = session.getMapper(ICatalogoDao.class);

			ok = cm.actualizarCategoria(x);
			session.commit();
		} catch(Exception e){
			System.out.println(""+e.toString());
		} finally{
			session.close();
		}
		
		return ok;
	}

	@Override
	public int eliminarCategoria(Catalogo x) {
		int ok=0;
		SqlSession session = MybatisUtil.getSqlSessionFactory().openSession();
		try{
			ICatalogoDao cm = session.getMapper(ICatalogoDao.class);
			ok = cm.eliminarCategoria(x);
			session.commit();
		} catch(Exception e){
			System.out.println(""+e.toString());
		} finally {
			session.close();
		}
		return ok;
	}
	
	
}
