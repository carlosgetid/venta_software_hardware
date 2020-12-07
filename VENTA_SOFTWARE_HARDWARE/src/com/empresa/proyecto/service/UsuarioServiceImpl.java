package com.empresa.proyecto.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.empresa.proyecto.bean.Usuario;
import com.empresa.proyecto.dao.IUsuarioDao;
import com.empresa.proyecto.util.MybatisUtil;




public class UsuarioServiceImpl implements IUsuarioService{


	@Override
	public List<Usuario> listaUsuario() {
		SqlSession session = MybatisUtil.getSqlSessionFactory().openSession();
		List<Usuario> lista = null;
		try {
			IUsuarioDao pm = session.getMapper(IUsuarioDao.class);
			lista = pm.listaUsuario();
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(""+e.toString());
		}finally{
			session.close();
		}
		return lista;
	}

	@Override
	public List<Usuario> consultaUsuarioxDNI(String dni) {
		SqlSession session = MybatisUtil.getSqlSessionFactory().openSession();
		List<Usuario> lista = null;
		try {
			IUsuarioDao pm = session.getMapper(IUsuarioDao.class);
			lista = pm.consultaUsuarioxDNI(dni);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(""+e.toString());
		}finally{
			session.close();
		}
		return lista;
	}

	@Override
	public Usuario obtenerUsuario(int codigo_usu) {
		SqlSession session = MybatisUtil.getSqlSessionFactory().openSession();
		Usuario lista = null;
		try {
			IUsuarioDao pm = session.getMapper(IUsuarioDao.class);
			lista = pm.obtenerUsuario(codigo_usu);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(""+e.toString());
		}finally{
			session.close();
		}
		return lista;
	}

	@Override
	public int actualizarUsuario(Usuario usuario) {
		int ok =0;
		SqlSession session = MybatisUtil.getSqlSessionFactory().openSession();
		try {
			IUsuarioDao pm = session.getMapper(IUsuarioDao.class);
			ok = pm.actualizarUsuario(usuario);
			System.out.println("estas em actualizarUsuario servici " +ok );
			System.out.println("estas em actualizarUsuario servici " + ok);
			System.out.println("estas em actualizarUsuario servici " + ok);
			session.commit();
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(""+e.toString());
		}finally{
			session.close();
		}
		return ok;
	}

}
