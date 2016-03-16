/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.itskill.bean;

import java.io.Serializable;
import java.util.Date;

/**
 *
 * @author usuario
 */
public class UsuarioBean implements Serializable{
    
    private Integer id_usuario;
    private Integer id_estado;
    private Integer id_persona;
    private PersonaBean personaBean;
    private String var_usuario;
    private String var_clave;
    private Date tms_fechacreacion;
    private Date tms_fechamodif;
    private Integer id_rol;
    private String nombres;

    public String getNombres() {
		return nombres;
	}


	public void setNombres(String nombres) {
		this.nombres = nombres;
	}


	/**
     * @return the id_usuario
     */
    public UsuarioBean(){
        personaBean= new PersonaBean();
    }
    
    
    public Integer getId_usuario() {
        return id_usuario;
    }

    /**
     * @param id_usuario the id_usuario to set
     */
    public void setId_usuario(Integer id_usuario) {
        this.id_usuario = id_usuario;
    }

 

    /**
     * @return the id_persona
     */
//    public Integer getId_persona() {
//        return id_persona;
//    }
//
//    /**
//     * @param id_persona the id_persona to set
//     */
//    public void setId_persona(Integer id_persona) {
//        this.id_persona = id_persona;
//    }

    public Integer getId_estado() {
		return id_estado;
	}


	public void setId_estado(Integer id_estado) {
		this.id_estado = id_estado;
	}


	/**
     * @return the var_usuario
     */
    public String getVar_usuario() {
        return var_usuario;
    }

    /**
     * @param var_usuario the var_usuario to set
     */
    public void setVar_usuario(String var_usuario) {
        this.var_usuario = var_usuario;
    }

    /**
     * @return the var_clave
     */
    public String getVar_clave() {
        return var_clave;
    }

    /**
     * @param var_clave the var_clave to set
     */
    public void setVar_clave(String var_clave) {
        this.var_clave = var_clave;
    }

    /**
     * @return the tms_fechacreacion
     */
    public Date getTms_fechacreacion() {
        return tms_fechacreacion;
    }

    /**
     * @param tms_fechacreacion the tms_fechacreacion to set
     */
    public void setTms_fechacreacion(Date tms_fechacreacion) {
        this.tms_fechacreacion = tms_fechacreacion;
    }

    /**
     * @return the tms_fechamodif
     */
    public Date getTms_fechamodif() {
        return tms_fechamodif;
    }

    /**
     * @param tms_fechamodif the tms_fechamodif to set
     */
    public void setTms_fechamodif(Date tms_fechamodif) {
        this.tms_fechamodif = tms_fechamodif;
    }

    /**
     * @return the personaBean
     */
    public PersonaBean getPersonaBean() {
        return personaBean;
    }

    /**
     * @param personaBean the personaBean to set
     */
    public void setPersonaBean(PersonaBean personaBean) {
        this.personaBean = personaBean;
    }

    /**
     * @return the id_rol
     */
    public Integer getId_rol() {
        return id_rol;
    }

    /**
     * @param id_rol the id_rol to set
     */
    public void setId_rol(Integer id_rol) {
        this.id_rol = id_rol;
    }

    public Integer getId_persona() {
        return id_persona;
    }

    public void setId_persona(Integer id_persona) {
        this.id_persona = id_persona;
    }
    
}

