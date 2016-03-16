/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.itskill.bean;

import java.io.Serializable;

/**
 *
 * @author usuario
 */
public class PersonaBean implements Serializable{
    
  
	private static final long serialVersionUID = 1L;
	private Integer id_persona;
    private String des_nombre;
    private String ape_paterno;
    private String ape_materno;
    private String dni;
    private String direccion;
    private ZonaBean zonaBean;
    
    
	public Integer getId_persona() {
		return id_persona;
	}
	public void setId_persona(Integer id_persona) {
		this.id_persona = id_persona;
	}
	public String getDes_nombre() {
		return des_nombre;
	}
	public void setDes_nombre(String des_nombre) {
		this.des_nombre = des_nombre;
	}
	public String getApe_paterno() {
		return ape_paterno;
	}
	public void setApe_paterno(String ape_paterno) {
		this.ape_paterno = ape_paterno;
	}
	public String getApe_materno() {
		return ape_materno;
	}
	public void setApe_materno(String ape_materno) {
		this.ape_materno = ape_materno;
	}
	public String getDni() {
		return dni;
	}
	public void setDni(String dni) {
		this.dni = dni;
	}
	public String getDireccion() {
		return direccion;
	}
	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}
	public ZonaBean getZonaBean() {
		return zonaBean;
	}
	public void setZonaBean(ZonaBean zonaBean) {
		this.zonaBean = zonaBean;
	}

    
}

