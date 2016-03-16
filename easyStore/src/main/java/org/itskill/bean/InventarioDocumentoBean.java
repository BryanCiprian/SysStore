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
public class InventarioDocumentoBean implements Serializable{
    
    private Integer id_inv_doc;
    private Integer tab_padre;
    private Integer id_estado;
    private String num_tabla;
    private String des_doc;
    private String num_doc;
    private String nom_corto;

    /**
     * @return the id_usuario
     */
    public InventarioDocumentoBean(){
    }

	public Integer getId_inv_doc() {
		return id_inv_doc;
	}

	public void setId_inv_doc(Integer id_inv_doc) {
		this.id_inv_doc = id_inv_doc;
	}

	public Integer getTab_padre() {
		return tab_padre;
	}

	public void setTab_padre(Integer tab_padre) {
		this.tab_padre = tab_padre;
	}

	public String getNum_tabla() {
		return num_tabla;
	}

	public void setNum_tabla(String num_tabla) {
		this.num_tabla = num_tabla;
	}

	public String getDes_doc() {
		return des_doc;
	}

	public void setDes_doc(String des_doc) {
		this.des_doc = des_doc;
	}

	public String getNum_doc() {
		return num_doc;
	}

	public void setNum_doc(String num_doc) {
		this.num_doc = num_doc;
	}

	public Integer getId_estado() {
		return id_estado;
	}

	public void setId_estado(Integer id_estado) {
		this.id_estado = id_estado;
	}

	public String getNom_corto() {
		return nom_corto;
	}

	public void setNom_corto(String nom_corto) {
		this.nom_corto = nom_corto;
	}


}

