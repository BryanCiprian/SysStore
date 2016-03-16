/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.itskill.bean;

import java.io.Serializable;

/**
 *
 * @author Maydeline Chanchari
 */
public class ZonaBean implements Serializable{
 
	private static final long serialVersionUID = 1L;
	private Integer id_zona;
    private String des_zona;
	public Integer getId_zona() {
		return id_zona;
	}
	public void setId_zona(Integer id_zona) {
		this.id_zona = id_zona;
	}
	public String getDes_zona() {
		return des_zona;
	}
	public void setDes_zona(String des_zona) {
		this.des_zona = des_zona;
	}

   
}
