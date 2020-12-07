package com.empresa.proyecto.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.empresa.proyecto.bean.Sugerencia;
import com.empresa.proyecto.bean.Usuario;
import com.empresa.proyecto.dao.ISugerenciaDao;
import com.empresa.proyecto.dao.IUsuarioDao;
import com.empresa.proyecto.util.MybatisUtil;

public class SugerenciaServiceImpl implements ISugerenciaService{

	@Override
	public List<Sugerencia> listaSugerencia() {
		SqlSession session = MybatisUtil.getSqlSessionFactory().openSession();
		List<Sugerencia> lista = null;
		try {
			ISugerenciaDao pm = session.getMapper(ISugerenciaDao.class);
			lista = pm.listaSugerencia();
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(""+e.toString());
		}finally{
			session.close();
		}
		return lista;
	}





}
