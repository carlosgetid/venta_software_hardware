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
			System.out.println("------Listando Marcas------");
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
	
	
}
