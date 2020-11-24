package com.empresa.proyecto.action;

import java.util.List;
import java.util.Map;

import com.empresa.proyecto.bean.Trabajador;
import com.empresa.proyecto.service.TrabajadorServiceImpl;
import com.empresa.proyecto.util.Security;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class TrabajadorAction extends ActionSupport {

	private Trabajador trabajador;
	private String username;
	private List<Trabajador> lstTrabajador;
	
	
	public List<Trabajador> getLstTrabajador() {
		return lstTrabajador;
	}
	public void setLstTrabajador(List<Trabajador> lstTrabajador) {
		this.lstTrabajador = lstTrabajador;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public Trabajador getTrabajador() {
		return trabajador;
	}
	public void setTrabajador(Trabajador trabajador) {
		this.trabajador = trabajador;
	}


	
	
	

	//METODO BUSCAR LOGIN
	public String buscar(){
			
				TrabajadorServiceImpl servicio = new TrabajadorServiceImpl();
				trabajador = servicio.obtenerTrabajador(username);
				
				
				
				
				if(trabajador==null){
					if(trabajador.getPaswoord().equals(trabajador.getPaswoord()) &&  trabajador.getUsername().equals(trabajador.getUsername())){
						System.out.println(" bienvenido ");
						System.out.println("----Buscar-----");
						System.out.println(" username: " + trabajador.getUsername());
						System.out.println(" paswoord: " + trabajador.getPaswoord());
			
						 	Map<String, Object> lasesion;
						 	
							lasesion =ActionContext.getContext().getSession();  
							System.out.println("trabajador: "+trabajador.getNombreCompleto());
							lasesion.put("trabajador", trabajador.getNombreCompleto()); 
							
						
							System.out.println("rol: "+trabajador.getCod_rol());
							lasesion.put("rol", trabajador.getCod_rol()); 
							
							
							if(trabajador.getCod_rol() == "Adminnistrador del sistema"){//si es administrador
								lasesion.put("strMenuHtml", Security.menuAdminSistema);
					
							 }else if(trabajador.getCod_rol()=="Adminnistrador del negocio"){//si es usuario
								 lasesion.put("strMenuHtml", Security.menuAdminNegocio);

							 }
						
					}
					addActionError(" Error al cargar!! ");
					return "error";
				}else{
					addActionMessage(" Bienvenido ");
					return "ok";
				}
					
				
		
					
				
				
				
	
	
	
	
	}
	
	
	
	
	
	public String lista()
	{
		TrabajadorServiceImpl servicio = new TrabajadorServiceImpl();
		lstTrabajador = servicio.listaTrabajador();
	
		System.out.println("-----LISTAR------");
		if(lstTrabajador ==null){
			addActionError("Listado vacio");
			return "error";
		}else{
			return "ok";
		}
		
		
		
	}
	
	
	
	
}
