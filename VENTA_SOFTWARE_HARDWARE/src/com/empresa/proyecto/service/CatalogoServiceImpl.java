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
		System.out.println("entro antes del try");
		System.out.println("entro antes del try");
		System.out.println("entro antes del try");
		System.out.println("entro antes del try");
		System.out.println("entro antes del try");
		System.out.println("entro antes del try");
		try{
			ICatalogoDao cm = session.getMapper(ICatalogoDao.class);
			System.out.println("------Listando Marcas------");
			marca = cm.lstMarca();
			System.out.println("------Listando Marcas 2------");
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
			CatalogoServiceImpl cm = session.getMapper(CatalogoServiceImpl.class);
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
	public int eliminarMarca(int cod_subCatalogo) {
		int ok=0;
		SqlSession session = MybatisUtil.getSqlSessionFactory().openSession();
		try{
			CatalogoServiceImpl cm = session.getMapper(CatalogoServiceImpl.class);
			ok = cm.eliminarMarca(cod_subCatalogo);
			session.commit();
		} catch(Exception e){
			System.out.println(""+e.toString());
		} finally {
			session.close();
		}
		return ok;
	}
	
	
}
