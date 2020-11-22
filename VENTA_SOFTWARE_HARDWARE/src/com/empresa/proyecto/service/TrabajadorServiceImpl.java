package com.empresa.proyecto.service;

import org.apache.ibatis.session.SqlSession;

import com.empresa.proyecto.bean.Trabajador;
import com.empresa.proyecto.dao.ITrabajadorDao;
import com.empresa.proyecto.util.MybatisUtil;

public class TrabajadorServiceImpl implements ITrabajadorService {

	@Override
	public Trabajador obtenerTrabajador(String username) {
		SqlSession session = MybatisUtil.getSqlSessionFactory().openSession();
		Trabajador trabajador = null;
		try {
			ITrabajadorDao pm = session.getMapper(ITrabajadorDao.class);
			trabajador = pm.obtenerTrabajador(username);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(""+e.toString());
		}finally{
			session.close();
		}
		return trabajador;
	}
	
	 

}
